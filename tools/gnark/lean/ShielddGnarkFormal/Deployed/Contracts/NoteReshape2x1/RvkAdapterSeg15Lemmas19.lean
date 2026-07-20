import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc872 (rho : Nat -> Seg15.F) :
    Seg15.relationLc872 rho = seg15AccX168 rho + seg15AccY168 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc872, Seg15.relationLc872Part0, Seg15.relationLc872Part1, Seg15.relationLc872Part2, Seg15.relationLc872Part3, Seg15.relationLc872Part4, Seg15.relationLc872Part5, Seg15.relationLc872Part6, Seg15.relationLc872Part7, Seg15.relationLc872Part8, Seg15.relationLc872Part9, Seg15.relationLc872Part10]
  rw [seg15AccX168_sum, seg15AccY168_sum]
  ring

theorem seg15_lc873 (rho : Nat -> Seg15.F) :
    Seg15.relationLc873 rho = 3079428186128887043815766017692616008552626917905870514239003519962054930266*seg15AccX168 rho + 5383720468184807092291963347632845782642052995723698537415820359568380097010*rho 16130 := by
  simp only [Seg15.relationLc873, Seg15.relationLc873Part0, Seg15.relationLc873Part1, Seg15.relationLc873Part2, Seg15.relationLc873Part3, Seg15.relationLc873Part4, Seg15.relationLc873Part5]
  rw [seg15AccX168_sum]
  ring

theorem seg15_lc874 (rho : Nat -> Seg15.F) :
    Seg15.relationLc874 rho = 4343832408249489744122585062222725371648899081840424406896304284394664692835*seg15AccY168 rho + 4343832408249489744122585062222725371648899081840424406896304284394664692835 + 5421737722239204502091077952412294614057517802052564626391969235122743688019*rho 16130 := by
  simp only [Seg15.relationLc874, Seg15.relationLc874Part0, Seg15.relationLc874Part1, Seg15.relationLc874Part2, Seg15.relationLc874Part3, Seg15.relationLc874Part4, Seg15.relationLc874Part5]
  rw [seg15AccY168_sum]
  ring

theorem seg15_lc875 (rho : Nat -> Seg15.F) :
    Seg15.relationLc875 rho = 3008712436468406310339474147681773149211857104119059433754568090727273881542*seg15AccX168 rho + 4343832408249489744122585062222725371648899081840424406896304284394664692835*seg15AccY168 rho + 4343832408249489744122585062222725371648899081840424406896304284394664692835 + 7472440861199542247230661084975851864398853871454634300146998014847016893022*rho 16130 := by
  simp only [Seg15.relationLc875, Seg15.relationLc875Part0, Seg15.relationLc875Part1, Seg15.relationLc875Part2, Seg15.relationLc875Part3, Seg15.relationLc875Part4, Seg15.relationLc875Part5, Seg15.relationLc875Part6, Seg15.relationLc875Part7, Seg15.relationLc875Part8, Seg15.relationLc875Part9, Seg15.relationLc875Part10]
  rw [seg15AccX168_sum, seg15AccY168_sum]
  ring

theorem seg15_lc876 (rho : Nat -> Seg15.F) :
    Seg15.relationLc876 rho = 5435749312959964113909350791099773382164042231035004394180665365190135357499*seg15AccX168 rho + 4100629341178880680126239876558821159727000253313639421038929171522744546206*seg15AccY168 rho + 4100629341178880680126239876558821159727000253313639421038929171522744546206 + 972020888228828177018163853805694666977045463699429527788235441070392346019*rho 16130 := by
  simp only [Seg15.relationLc876, Seg15.relationLc876Part0, Seg15.relationLc876Part1, Seg15.relationLc876Part2, Seg15.relationLc876Part3, Seg15.relationLc876Part4, Seg15.relationLc876Part5, Seg15.relationLc876Part6, Seg15.relationLc876Part7, Seg15.relationLc876Part8, Seg15.relationLc876Part9, Seg15.relationLc876Part10]
  rw [seg15AccX168_sum, seg15AccY168_sum]
  ring

theorem seg15_lc877 (rho : Nat -> Seg15.F) :
    Seg15.relationLc877 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX168 rho + rho 17281 := by
  simp only [Seg15.relationLc877, Seg15.relationLc877Part0, Seg15.relationLc877Part1, Seg15.relationLc877Part2, Seg15.relationLc877Part3, Seg15.relationLc877Part4, Seg15.relationLc877Part5]
  rw [seg15AccX168_sum]
  ring

theorem seg15_lc878 (rho : Nat -> Seg15.F) :
    Seg15.relationLc878 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY168 rho + rho 17283 := by
  simp only [Seg15.relationLc878, Seg15.relationLc878Part0, Seg15.relationLc878Part1, Seg15.relationLc878Part2, Seg15.relationLc878Part3, Seg15.relationLc878Part4, Seg15.relationLc878Part5]
  rw [seg15AccY168_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
