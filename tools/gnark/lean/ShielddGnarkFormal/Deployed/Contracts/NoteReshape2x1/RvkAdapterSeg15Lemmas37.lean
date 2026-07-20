import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc998 (rho : Nat -> Seg15.F) :
    Seg15.relationLc998 rho = seg15AccX186 rho + seg15AccY186 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc998, Seg15.relationLc998Part0, Seg15.relationLc998Part1, Seg15.relationLc998Part2, Seg15.relationLc998Part3, Seg15.relationLc998Part4, Seg15.relationLc998Part5, Seg15.relationLc998Part6, Seg15.relationLc998Part7, Seg15.relationLc998Part8, Seg15.relationLc998Part9, Seg15.relationLc998Part10, Seg15.relationLc998Part11]
  rw [seg15AccX186_sum, seg15AccY186_sum]
  ring

theorem seg15_lc999 (rho : Nat -> Seg15.F) :
    Seg15.relationLc999 rho = 5232456591901524675171898312727688831066952335643208979409582199111200888071*seg15AccX186 rho + 5909232206328692192169621804612071292019481376635366714888083991012077534906*rho 16130 := by
  simp only [Seg15.relationLc999, Seg15.relationLc999Part0, Seg15.relationLc999Part1, Seg15.relationLc999Part2, Seg15.relationLc999Part3, Seg15.relationLc999Part4, Seg15.relationLc999Part5]
  rw [seg15AccX186_sum]
  ring

theorem seg15_lc1000 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1000 rho = 519459684926506647045678163036511550506178357734185422711253957475149940396*seg15AccY186 rho + 519459684926506647045678163036511550506178357734185422711253957475149940396 + 5035188772786492644344439440090719894418338524917818077608061157396210162411*rho 16130 := by
  simp only [Seg15.relationLc1000, Seg15.relationLc1000Part0, Seg15.relationLc1000Part1, Seg15.relationLc1000Part2, Seg15.relationLc1000Part3, Seg15.relationLc1000Part4, Seg15.relationLc1000Part5]
  rw [seg15AccY186_sum]
  ring

theorem seg15_lc1001 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1001 rho = 8328793117556774915098451304516039326646763016140218256338454169936138141010*seg15AccX186 rho + 519459684926506647045678163036511550506178357734185422711253957475149940396*seg15AccY186 rho + 519459684926506647045678163036511550506178357734185422711253957475149940396 + 1713588048568020700537857768324203259359111504685594798991674366567084870228*rho 16130 := by
  simp only [Seg15.relationLc1001, Seg15.relationLc1001Part0, Seg15.relationLc1001Part1, Seg15.relationLc1001Part2, Seg15.relationLc1001Part3, Seg15.relationLc1001Part4, Seg15.relationLc1001Part5, Seg15.relationLc1001Part6, Seg15.relationLc1001Part7, Seg15.relationLc1001Part8, Seg15.relationLc1001Part9, Seg15.relationLc1001Part10, Seg15.relationLc1001Part11]
  rw [seg15AccX186_sum, seg15AccY186_sum]
  ring

theorem seg15_lc1002 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1002 rho = 115668631871595509150373634265507204729136319013845571596779285981271098031*seg15AccX186 rho + 7925002064501863777203146775745034980869720977419878405223979498442259298645*seg15AccY186 rho + 7925002064501863777203146775745034980869720977419878405223979498442259298645 + 6730873700860349723710967170457343272016787830468469028943559089350324368813*rho 16130 := by
  simp only [Seg15.relationLc1002, Seg15.relationLc1002Part0, Seg15.relationLc1002Part1, Seg15.relationLc1002Part2, Seg15.relationLc1002Part3, Seg15.relationLc1002Part4, Seg15.relationLc1002Part5, Seg15.relationLc1002Part6, Seg15.relationLc1002Part7, Seg15.relationLc1002Part8, Seg15.relationLc1002Part9, Seg15.relationLc1002Part10, Seg15.relationLc1002Part11]
  rw [seg15AccX186_sum, seg15AccY186_sum]
  ring

theorem seg15_lc1003 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1003 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX186 rho + rho 17425 := by
  simp only [Seg15.relationLc1003, Seg15.relationLc1003Part0, Seg15.relationLc1003Part1, Seg15.relationLc1003Part2, Seg15.relationLc1003Part3, Seg15.relationLc1003Part4, Seg15.relationLc1003Part5]
  rw [seg15AccX186_sum]
  ring

theorem seg15_lc1004 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1004 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY186 rho + rho 17427 := by
  simp only [Seg15.relationLc1004, Seg15.relationLc1004Part0, Seg15.relationLc1004Part1, Seg15.relationLc1004Part2, Seg15.relationLc1004Part3, Seg15.relationLc1004Part4, Seg15.relationLc1004Part5]
  rw [seg15AccY186_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
