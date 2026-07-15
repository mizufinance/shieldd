import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1040 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1040 rho = seg30AccX192 rho + seg30AccY192 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1040, Seg30.relationLc1040Part0, Seg30.relationLc1040Part1, Seg30.relationLc1040Part2, Seg30.relationLc1040Part3, Seg30.relationLc1040Part4, Seg30.relationLc1040Part5, Seg30.relationLc1040Part6, Seg30.relationLc1040Part7, Seg30.relationLc1040Part8, Seg30.relationLc1040Part9, Seg30.relationLc1040Part10, Seg30.relationLc1040Part11, Seg30.relationLc1040Part12]
  rw [seg30AccX192_sum, seg30AccY192_sum]
  ring

theorem seg30_lc1041 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1041 rho = 7882950453032646771230046134550116284898253460684190996110334416969682605090*seg30AccX192 rho + 1348957722018839877246664846297409567079768698538167297787547392482862052295*rho 28317 := by
  simp only [Seg30.relationLc1041, Seg30.relationLc1041Part0, Seg30.relationLc1041Part1, Seg30.relationLc1041Part2, Seg30.relationLc1041Part3, Seg30.relationLc1041Part4, Seg30.relationLc1041Part5, Seg30.relationLc1041Part6]
  rw [seg30AccX192_sum]
  ring

theorem seg30_lc1042 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1042 rho = 4724941216644483096082844278014312576843795915813928318368929534344074203769*seg30AccY192 rho + 4724941216644483096082844278014312576843795915813928318368929534344074203769 + 6733657549797827815822559986917006574523566983426091644258847440846821914421*rho 28317 := by
  simp only [Seg30.relationLc1042, Seg30.relationLc1042Part0, Seg30.relationLc1042Part1, Seg30.relationLc1042Part2, Seg30.relationLc1042Part3, Seg30.relationLc1042Part4, Seg30.relationLc1042Part5, Seg30.relationLc1042Part6]
  rw [seg30AccY192_sum]
  ring

theorem seg30_lc1043 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1043 rho = 234615450399068981126740323089512902479012875961096156476244525408180949833*seg30AccX192 rho + 4724941216644483096082844278014312576843795915813928318368929534344074203769*seg30AccY192 rho + 4724941216644483096082844278014312576843795915813928318368929534344074203769 + 2518861336485691516620315252446210560042343405566512006645956178307606333348*rho 28317 := by
  simp only [Seg30.relationLc1043, Seg30.relationLc1043Part0, Seg30.relationLc1043Part1, Seg30.relationLc1043Part2, Seg30.relationLc1043Part3, Seg30.relationLc1043Part4, Seg30.relationLc1043Part5, Seg30.relationLc1043Part6, Seg30.relationLc1043Part7, Seg30.relationLc1043Part8, Seg30.relationLc1043Part9, Seg30.relationLc1043Part10, Seg30.relationLc1043Part11, Seg30.relationLc1043Part12]
  rw [seg30AccX192_sum, seg30AccY192_sum]
  ring

theorem seg30_lc1044 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1044 rho = 8209846299029301443122084615692033628896886459192967671458988930509228289208*seg30AccX192 rho + 3719520532783887328165980660767233954532103419340135509566303921573335035272*seg30AccY192 rho + 3719520532783887328165980660767233954532103419340135509566303921573335035272 + 5925600412942678907628509686335335971333555929587551821289277277609802905693*rho 28317 := by
  simp only [Seg30.relationLc1044, Seg30.relationLc1044Part0, Seg30.relationLc1044Part1, Seg30.relationLc1044Part2, Seg30.relationLc1044Part3, Seg30.relationLc1044Part4, Seg30.relationLc1044Part5, Seg30.relationLc1044Part6, Seg30.relationLc1044Part7, Seg30.relationLc1044Part8, Seg30.relationLc1044Part9, Seg30.relationLc1044Part10, Seg30.relationLc1044Part11, Seg30.relationLc1044Part12]
  rw [seg30AccX192_sum, seg30AccY192_sum]
  ring

theorem seg30_lc1045 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1045 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX192 rho + rho 29660 := by
  simp only [Seg30.relationLc1045, Seg30.relationLc1045Part0, Seg30.relationLc1045Part1, Seg30.relationLc1045Part2, Seg30.relationLc1045Part3, Seg30.relationLc1045Part4, Seg30.relationLc1045Part5, Seg30.relationLc1045Part6]
  rw [seg30AccX192_sum]
  ring

theorem seg30_lc1046 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1046 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY192 rho + rho 29662 := by
  simp only [Seg30.relationLc1046, Seg30.relationLc1046Part0, Seg30.relationLc1046Part1, Seg30.relationLc1046Part2, Seg30.relationLc1046Part3, Seg30.relationLc1046Part4, Seg30.relationLc1046Part5, Seg30.relationLc1046Part6]
  rw [seg30AccY192_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
