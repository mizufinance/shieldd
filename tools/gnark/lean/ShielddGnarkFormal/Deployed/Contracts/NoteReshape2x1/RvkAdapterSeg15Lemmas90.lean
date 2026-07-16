import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1369 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1369 rho = seg15AccX239 rho + seg15AccY239 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1369, Seg15.relationLc1369Part0, Seg15.relationLc1369Part1, Seg15.relationLc1369Part2, Seg15.relationLc1369Part3, Seg15.relationLc1369Part4, Seg15.relationLc1369Part5, Seg15.relationLc1369Part6, Seg15.relationLc1369Part7, Seg15.relationLc1369Part8, Seg15.relationLc1369Part9, Seg15.relationLc1369Part10, Seg15.relationLc1369Part11, Seg15.relationLc1369Part12, Seg15.relationLc1369Part13, Seg15.relationLc1369Part14]
  rw [seg15AccX239_sum, seg15AccY239_sum]
  ring

theorem seg15_lc1370 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1370 rho = 6772296389239986671378956859861500069359331596161656606912733376557475308717*seg15AccX239 rho + 7796826063199595450469893030090568295522849956465905175758695894368515095753*rho 16136 := by
  simp only [Seg15.relationLc1370, Seg15.relationLc1370Part0, Seg15.relationLc1370Part1, Seg15.relationLc1370Part2, Seg15.relationLc1370Part3, Seg15.relationLc1370Part4, Seg15.relationLc1370Part5, Seg15.relationLc1370Part6, Seg15.relationLc1370Part7]
  rw [seg15AccX239_sum]
  ring

theorem seg15_lc1371 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1371 rho = 2038095029705799791750551460424790418921850671190595035485614575563709137534*seg15AccY239 rho + 2038095029705799791750551460424790418921850671190595035485614575563709137534 + 1527594709452849466540517727286313016362911606278171072498883692955816107282*rho 16136 := by
  simp only [Seg15.relationLc1371, Seg15.relationLc1371Part0, Seg15.relationLc1371Part1, Seg15.relationLc1371Part2, Seg15.relationLc1371Part3, Seg15.relationLc1371Part4, Seg15.relationLc1371Part5, Seg15.relationLc1371Part6, Seg15.relationLc1371Part7]
  rw [seg15AccY239_sum]
  ring

theorem seg15_lc1372 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1372 rho = 2587851510960106795465588224175038742665364520560632471846078675968275743602*seg15AccX239 rho + 2038095029705799791750551460424790418921850671190595035485614575563709137534*seg15AccY239 rho + 2038095029705799791750551460424790418921850671190595035485614575563709137534 + 6365964670583031667600079805115563618009991612823353570845031516402187010505*rho 16136 := by
  simp only [Seg15.relationLc1372, Seg15.relationLc1372Part0, Seg15.relationLc1372Part1, Seg15.relationLc1372Part2, Seg15.relationLc1372Part3, Seg15.relationLc1372Part4, Seg15.relationLc1372Part5, Seg15.relationLc1372Part6, Seg15.relationLc1372Part7, Seg15.relationLc1372Part8, Seg15.relationLc1372Part9, Seg15.relationLc1372Part10, Seg15.relationLc1372Part11, Seg15.relationLc1372Part12, Seg15.relationLc1372Part13, Seg15.relationLc1372Part14]
  rw [seg15AccX239_sum, seg15AccY239_sum]
  ring

theorem seg15_lc1373 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1373 rho = 5856610238468263628783236714606507788710534814593431356089154779949133495439*seg15AccX239 rho + 6406366719722570632498273478356756112454048663963468792449618880353700101507*seg15AccY239 rho + 6406366719722570632498273478356756112454048663963468792449618880353700101507 + 2078497078845338756648745133665982913365907722330710257090201939515222228536*rho 16136 := by
  simp only [Seg15.relationLc1373, Seg15.relationLc1373Part0, Seg15.relationLc1373Part1, Seg15.relationLc1373Part2, Seg15.relationLc1373Part3, Seg15.relationLc1373Part4, Seg15.relationLc1373Part5, Seg15.relationLc1373Part6, Seg15.relationLc1373Part7, Seg15.relationLc1373Part8, Seg15.relationLc1373Part9, Seg15.relationLc1373Part10, Seg15.relationLc1373Part11, Seg15.relationLc1373Part12, Seg15.relationLc1373Part13, Seg15.relationLc1373Part14]
  rw [seg15AccX239_sum, seg15AccY239_sum]
  ring

theorem seg15_lc1374 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1374 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX239 rho + rho 17855 := by
  simp only [Seg15.relationLc1374, Seg15.relationLc1374Part0, Seg15.relationLc1374Part1, Seg15.relationLc1374Part2, Seg15.relationLc1374Part3, Seg15.relationLc1374Part4, Seg15.relationLc1374Part5, Seg15.relationLc1374Part6, Seg15.relationLc1374Part7]
  rw [seg15AccX239_sum]
  ring

theorem seg15_lc1375 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1375 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY239 rho + rho 17857 := by
  simp only [Seg15.relationLc1375, Seg15.relationLc1375Part0, Seg15.relationLc1375Part1, Seg15.relationLc1375Part2, Seg15.relationLc1375Part3, Seg15.relationLc1375Part4, Seg15.relationLc1375Part5, Seg15.relationLc1375Part6, Seg15.relationLc1375Part7]
  rw [seg15AccY239_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
