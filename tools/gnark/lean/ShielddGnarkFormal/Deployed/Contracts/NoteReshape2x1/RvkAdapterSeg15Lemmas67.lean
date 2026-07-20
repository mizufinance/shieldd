import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1208 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1208 rho = seg15AccX216 rho + seg15AccY216 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc1208, Seg15.relationLc1208Part0, Seg15.relationLc1208Part1, Seg15.relationLc1208Part2, Seg15.relationLc1208Part3, Seg15.relationLc1208Part4, Seg15.relationLc1208Part5, Seg15.relationLc1208Part6, Seg15.relationLc1208Part7, Seg15.relationLc1208Part8, Seg15.relationLc1208Part9, Seg15.relationLc1208Part10, Seg15.relationLc1208Part11, Seg15.relationLc1208Part12, Seg15.relationLc1208Part13]
  rw [seg15AccX216_sum, seg15AccY216_sum]
  ring

theorem seg15_lc1209 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1209 rho = 3330418736367948331367250765108025834547152750757290585022127288549783031492*seg15AccX216 rho + 7732680193357595775397599743496675629449255768853070406785728643839962901504*rho 16130 := by
  simp only [Seg15.relationLc1209, Seg15.relationLc1209Part0, Seg15.relationLc1209Part1, Seg15.relationLc1209Part2, Seg15.relationLc1209Part3, Seg15.relationLc1209Part4, Seg15.relationLc1209Part5, Seg15.relationLc1209Part6]
  rw [seg15AccX216_sum]
  ring

theorem seg15_lc1210 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1210 rho = 6513009797142566324112437740216326258495380864073566594591358293644236642463*seg15AccY216 rho + 6513009797142566324112437740216326258495380864073566594591358293644236642463 + 567370397628330717217018112115180285802905338087350990356162266591331682719*rho 16130 := by
  simp only [Seg15.relationLc1210, Seg15.relationLc1210Part0, Seg15.relationLc1210Part1, Seg15.relationLc1210Part2, Seg15.relationLc1210Part3, Seg15.relationLc1210Part4, Seg15.relationLc1210Part5, Seg15.relationLc1210Part6]
  rw [seg15AccY216_sum]
  ring

theorem seg15_lc1211 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1211 rho = 2111519046525914471578692512262554007621102664942759179303582716486657980307*seg15AccX216 rho + 6513009797142566324112437740216326258495380864073566594591358293644236642463*seg15AccY216 rho + 6513009797142566324112437740216326258495380864073566594591358293644236642463 + 3516127552242981502696547766275804820625694863086105159522174114052698548277*rho 16130 := by
  simp only [Seg15.relationLc1211, Seg15.relationLc1211Part0, Seg15.relationLc1211Part1, Seg15.relationLc1211Part2, Seg15.relationLc1211Part3, Seg15.relationLc1211Part4, Seg15.relationLc1211Part5, Seg15.relationLc1211Part6, Seg15.relationLc1211Part7, Seg15.relationLc1211Part8, Seg15.relationLc1211Part9, Seg15.relationLc1211Part10, Seg15.relationLc1211Part11, Seg15.relationLc1211Part12, Seg15.relationLc1211Part13]
  rw [seg15AccX216_sum, seg15AccY216_sum]
  ring

theorem seg15_lc1212 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1212 rho = 6332942702902455952670132426518992523754796670211304648631650739430751258734*seg15AccX216 rho + 1931451952285804100136387198565220272880518471080497233343875162273172596578*seg15AccY216 rho + 1931451952285804100136387198565220272880518471080497233343875162273172596578 + 4928334197185388921552277172505741710750204472067958668413059341864710690764*rho 16130 := by
  simp only [Seg15.relationLc1212, Seg15.relationLc1212Part0, Seg15.relationLc1212Part1, Seg15.relationLc1212Part2, Seg15.relationLc1212Part3, Seg15.relationLc1212Part4, Seg15.relationLc1212Part5, Seg15.relationLc1212Part6, Seg15.relationLc1212Part7, Seg15.relationLc1212Part8, Seg15.relationLc1212Part9, Seg15.relationLc1212Part10, Seg15.relationLc1212Part11, Seg15.relationLc1212Part12, Seg15.relationLc1212Part13]
  rw [seg15AccX216_sum, seg15AccY216_sum]
  ring

theorem seg15_lc1213 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1213 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX216 rho + rho 17665 := by
  simp only [Seg15.relationLc1213, Seg15.relationLc1213Part0, Seg15.relationLc1213Part1, Seg15.relationLc1213Part2, Seg15.relationLc1213Part3, Seg15.relationLc1213Part4, Seg15.relationLc1213Part5, Seg15.relationLc1213Part6]
  rw [seg15AccX216_sum]
  ring

theorem seg15_lc1214 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1214 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY216 rho + rho 17667 := by
  simp only [Seg15.relationLc1214, Seg15.relationLc1214Part0, Seg15.relationLc1214Part1, Seg15.relationLc1214Part2, Seg15.relationLc1214Part3, Seg15.relationLc1214Part4, Seg15.relationLc1214Part5, Seg15.relationLc1214Part6]
  rw [seg15AccY216_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
