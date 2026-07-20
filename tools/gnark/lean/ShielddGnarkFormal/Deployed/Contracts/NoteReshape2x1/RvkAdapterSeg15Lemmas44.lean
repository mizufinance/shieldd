import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1047 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1047 rho = seg15AccX193 rho + seg15AccY193 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc1047, Seg15.relationLc1047Part0, Seg15.relationLc1047Part1, Seg15.relationLc1047Part2, Seg15.relationLc1047Part3, Seg15.relationLc1047Part4, Seg15.relationLc1047Part5, Seg15.relationLc1047Part6, Seg15.relationLc1047Part7, Seg15.relationLc1047Part8, Seg15.relationLc1047Part9, Seg15.relationLc1047Part10, Seg15.relationLc1047Part11, Seg15.relationLc1047Part12]
  rw [seg15AccX193_sum, seg15AccY193_sum]
  ring

theorem seg15_lc1048 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1048 rho = 665401531204958410359485285224444089030571492870617266963020838851334996806*seg15AccX193 rho + 7203158281258429186792596937609427838114052691230851337540150899267240447593*rho 16130 := by
  simp only [Seg15.relationLc1048, Seg15.relationLc1048Part0, Seg15.relationLc1048Part1, Seg15.relationLc1048Part2, Seg15.relationLc1048Part3, Seg15.relationLc1048Part4, Seg15.relationLc1048Part5, Seg15.relationLc1048Part6]
  rw [seg15AccX193_sum]
  ring

theorem seg15_lc1049 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1049 rho = 7949996763731572641602336285231421879040211494384593969577683157594223965682*seg15AccY193 rho + 7949996763731572641602336285231421879040211494384593969577683157594223965682 + 129542748202106780674562906588490057102641958601250660787290847505537091807*rho 16130 := by
  simp only [Seg15.relationLc1049, Seg15.relationLc1049Part0, Seg15.relationLc1049Part1, Seg15.relationLc1049Part2, Seg15.relationLc1049Part3, Seg15.relationLc1049Part4, Seg15.relationLc1049Part5, Seg15.relationLc1049Part6]
  rw [seg15AccY193_sum]
  ring

theorem seg15_lc1050 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1050 rho = 8240628480253571985798045483221854888641238600306868845422056024125578871794*seg15AccX193 rho + 7949996763731572641602336285231421879040211494384593969577683157594223965682*seg15AccY193 rho + 7949996763731572641602336285231421879040211494384593969577683157594223965682 + 4872677566246388365816171543831493150466309394917875322659417988232181682956*rho 16130 := by
  simp only [Seg15.relationLc1050, Seg15.relationLc1050Part0, Seg15.relationLc1050Part1, Seg15.relationLc1050Part2, Seg15.relationLc1050Part3, Seg15.relationLc1050Part4, Seg15.relationLc1050Part5, Seg15.relationLc1050Part6, Seg15.relationLc1050Part7, Seg15.relationLc1050Part8, Seg15.relationLc1050Part9, Seg15.relationLc1050Part10, Seg15.relationLc1050Part11, Seg15.relationLc1050Part12]
  rw [seg15AccX193_sum, seg15AccY193_sum]
  ring

theorem seg15_lc1051 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1051 rho = 203833269174798438450779455559691642734660734847194982513177431791830367247*seg15AccX193 rho + 494464985696797782646488653550124652335687840769469858357550298323185273359*seg15AccY193 rho + 494464985696797782646488653550124652335687840769469858357550298323185273359 + 3571784183181982058432653394950053380909589940236188505275815467685227556085*rho 16130 := by
  simp only [Seg15.relationLc1051, Seg15.relationLc1051Part0, Seg15.relationLc1051Part1, Seg15.relationLc1051Part2, Seg15.relationLc1051Part3, Seg15.relationLc1051Part4, Seg15.relationLc1051Part5, Seg15.relationLc1051Part6, Seg15.relationLc1051Part7, Seg15.relationLc1051Part8, Seg15.relationLc1051Part9, Seg15.relationLc1051Part10, Seg15.relationLc1051Part11, Seg15.relationLc1051Part12]
  rw [seg15AccX193_sum, seg15AccY193_sum]
  ring

theorem seg15_lc1052 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1052 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX193 rho + rho 17481 := by
  simp only [Seg15.relationLc1052, Seg15.relationLc1052Part0, Seg15.relationLc1052Part1, Seg15.relationLc1052Part2, Seg15.relationLc1052Part3, Seg15.relationLc1052Part4, Seg15.relationLc1052Part5, Seg15.relationLc1052Part6]
  rw [seg15AccX193_sum]
  ring

theorem seg15_lc1053 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1053 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY193 rho + rho 17483 := by
  simp only [Seg15.relationLc1053, Seg15.relationLc1053Part0, Seg15.relationLc1053Part1, Seg15.relationLc1053Part2, Seg15.relationLc1053Part3, Seg15.relationLc1053Part4, Seg15.relationLc1053Part5, Seg15.relationLc1053Part6]
  rw [seg15AccY193_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
