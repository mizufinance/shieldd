import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc914 (rho : Nat -> Seg30.F) :
    Seg30.relationLc914 rho = seg30AccX174 rho + seg30AccY174 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc914, Seg30.relationLc914Part0, Seg30.relationLc914Part1, Seg30.relationLc914Part2, Seg30.relationLc914Part3, Seg30.relationLc914Part4, Seg30.relationLc914Part5, Seg30.relationLc914Part6, Seg30.relationLc914Part7, Seg30.relationLc914Part8, Seg30.relationLc914Part9, Seg30.relationLc914Part10]
  rw [seg30AccX174_sum, seg30AccY174_sum]
  ring

theorem seg30_lc915 (rho : Nat -> Seg30.F) :
    Seg30.relationLc915 rho = 7956576312051478103586902813934973720197758426747597387557562980228800869579*seg30AccX174 rho + 3474884297360945043441450435985457591480122824021508868959104190618301029959*rho 28317 := by
  simp only [Seg30.relationLc915, Seg30.relationLc915Part0, Seg30.relationLc915Part1, Seg30.relationLc915Part2, Seg30.relationLc915Part3, Seg30.relationLc915Part4, Seg30.relationLc915Part5]
  rw [seg30AccX174_sum]
  ring

theorem seg30_lc916 (rho : Nat -> Seg30.F) :
    Seg30.relationLc916 rho = 2769161570314866453625341696387217252009654392896117896007257696138380589488*seg30AccY174 rho + 2769161570314866453625341696387217252009654392896117896007257696138380589488 + 6482744307870712748064178964204059792030601444190026041901651062941018432061*rho 28317 := by
  simp only [Seg30.relationLc916, Seg30.relationLc916Part0, Seg30.relationLc916Part1, Seg30.relationLc916Part2, Seg30.relationLc916Part3, Seg30.relationLc916Part4, Seg30.relationLc916Part5]
  rw [seg30AccY174_sum]
  ring

theorem seg30_lc917 (rho : Nat -> Seg30.F) :
    Seg30.relationLc917 rho = 4500197130467494038636195375476148077690837401088922971378797813158338386788*seg30AccX174 rho + 2769161570314866453625341696387217252009654392896117896007257696138380589488*seg30AccY174 rho + 2769161570314866453625341696387217252009654392896117896007257696138380589488 + 1720782064663634873891204371271994306471828738371256345134792835634614247256*rho 28317 := by
  simp only [Seg30.relationLc917, Seg30.relationLc917Part0, Seg30.relationLc917Part1, Seg30.relationLc917Part2, Seg30.relationLc917Part3, Seg30.relationLc917Part4, Seg30.relationLc917Part5, Seg30.relationLc917Part6, Seg30.relationLc917Part7, Seg30.relationLc917Part8, Seg30.relationLc917Part9, Seg30.relationLc917Part10]
  rw [seg30AccX174_sum, seg30AccY174_sum]
  ring

theorem seg30_lc918 (rho : Nat -> Seg30.F) :
    Seg30.relationLc918 rho = 3944264618960876385612629563305398453685061934065140856556435642759070852253*seg30AccX174 rho + 5675300179113503970623483242394329279366244942257945931927975759779028649553*seg30AccY174 rho + 5675300179113503970623483242394329279366244942257945931927975759779028649553 + 6723679684764735550357620567509552224904070596782807482800440620282794991785*rho 28317 := by
  simp only [Seg30.relationLc918, Seg30.relationLc918Part0, Seg30.relationLc918Part1, Seg30.relationLc918Part2, Seg30.relationLc918Part3, Seg30.relationLc918Part4, Seg30.relationLc918Part5, Seg30.relationLc918Part6, Seg30.relationLc918Part7, Seg30.relationLc918Part8, Seg30.relationLc918Part9, Seg30.relationLc918Part10]
  rw [seg30AccX174_sum, seg30AccY174_sum]
  ring

theorem seg30_lc919 (rho : Nat -> Seg30.F) :
    Seg30.relationLc919 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX174 rho + rho 29516 := by
  simp only [Seg30.relationLc919, Seg30.relationLc919Part0, Seg30.relationLc919Part1, Seg30.relationLc919Part2, Seg30.relationLc919Part3, Seg30.relationLc919Part4, Seg30.relationLc919Part5]
  rw [seg30AccX174_sum]
  ring

theorem seg30_lc920 (rho : Nat -> Seg30.F) :
    Seg30.relationLc920 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY174 rho + rho 29518 := by
  simp only [Seg30.relationLc920, Seg30.relationLc920Part0, Seg30.relationLc920Part1, Seg30.relationLc920Part2, Seg30.relationLc920Part3, Seg30.relationLc920Part4, Seg30.relationLc920Part5]
  rw [seg30AccY174_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
