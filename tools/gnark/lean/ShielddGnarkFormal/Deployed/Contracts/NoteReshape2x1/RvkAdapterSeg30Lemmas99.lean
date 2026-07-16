import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1432 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1432 rho = seg30AccX248 rho + seg30AccY248 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1432, Seg30.relationLc1432Part0, Seg30.relationLc1432Part1, Seg30.relationLc1432Part2, Seg30.relationLc1432Part3, Seg30.relationLc1432Part4, Seg30.relationLc1432Part5, Seg30.relationLc1432Part6, Seg30.relationLc1432Part7, Seg30.relationLc1432Part8, Seg30.relationLc1432Part9, Seg30.relationLc1432Part10, Seg30.relationLc1432Part11, Seg30.relationLc1432Part12, Seg30.relationLc1432Part13, Seg30.relationLc1432Part14, Seg30.relationLc1432Part15]
  rw [seg30AccX248_sum, seg30AccY248_sum]
  ring

theorem seg30_lc1433 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1433 rho = 7534130220994948469448485159954569829989303291994285594626697092191329623737*seg30AccX248 rho + 3716211268890037814401188648723045032348554276262890654908772248785236731110*rho 28317 := by
  simp only [Seg30.relationLc1433, Seg30.relationLc1433Part0, Seg30.relationLc1433Part1, Seg30.relationLc1433Part2, Seg30.relationLc1433Part3, Seg30.relationLc1433Part4, Seg30.relationLc1433Part5, Seg30.relationLc1433Part6, Seg30.relationLc1433Part7]
  rw [seg30AccX248_sum]
  ring

theorem seg30_lc1434 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1434 rho = 3495198042200539245348034761970589749121878896975913938990248009704026313594*seg30AccY248 rho + 3495198042200539245348034761970589749121878896975913938990248009704026313594 + 2810509145840311449603695208686646865203949018815104943021971327492244934389*rho 28317 := by
  simp only [Seg30.relationLc1434, Seg30.relationLc1434Part0, Seg30.relationLc1434Part1, Seg30.relationLc1434Part2, Seg30.relationLc1434Part3, Seg30.relationLc1434Part4, Seg30.relationLc1434Part5, Seg30.relationLc1434Part6, Seg30.relationLc1434Part7]
  rw [seg30AccY248_sum]
  ring

theorem seg30_lc1435 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1435 rho = 5453238841974947790716536615618659485605095334936252482644267439963965357747*seg30AccX248 rho + 3495198042200539245348034761970589749121878896975913938990248009704026313594*seg30AccY248 rho + 3495198042200539245348034761970589749121878896975913938990248009704026313594 + 4508458332590364705258590252211678904124015040236746662390258477439498375246*rho 28317 := by
  simp only [Seg30.relationLc1435, Seg30.relationLc1435Part0, Seg30.relationLc1435Part1, Seg30.relationLc1435Part2, Seg30.relationLc1435Part3, Seg30.relationLc1435Part4, Seg30.relationLc1435Part5, Seg30.relationLc1435Part6, Seg30.relationLc1435Part7, Seg30.relationLc1435Part8, Seg30.relationLc1435Part9, Seg30.relationLc1435Part10, Seg30.relationLc1435Part11, Seg30.relationLc1435Part12, Seg30.relationLc1435Part13, Seg30.relationLc1435Part14, Seg30.relationLc1435Part15]
  rw [seg30AccX248_sum, seg30AccY248_sum]
  ring

theorem seg30_lc1436 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1436 rho = 2991222907453422633532288323162887045770804000217811345290966015953443881294*seg30AccX248 rho + 4949263707227831178900790176810956782254020438178149888944985446213382925447*seg30AccY248 rho + 4949263707227831178900790176810956782254020438178149888944985446213382925447 + 3936003416838005718990234686569867627251884294917317165544974978477910863795*rho 28317 := by
  simp only [Seg30.relationLc1436, Seg30.relationLc1436Part0, Seg30.relationLc1436Part1, Seg30.relationLc1436Part2, Seg30.relationLc1436Part3, Seg30.relationLc1436Part4, Seg30.relationLc1436Part5, Seg30.relationLc1436Part6, Seg30.relationLc1436Part7, Seg30.relationLc1436Part8, Seg30.relationLc1436Part9, Seg30.relationLc1436Part10, Seg30.relationLc1436Part11, Seg30.relationLc1436Part12, Seg30.relationLc1436Part13, Seg30.relationLc1436Part14, Seg30.relationLc1436Part15]
  rw [seg30AccX248_sum, seg30AccY248_sum]
  ring

theorem seg30_lc1437 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1437 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX248 rho + rho 30108 := by
  simp only [Seg30.relationLc1437, Seg30.relationLc1437Part0, Seg30.relationLc1437Part1, Seg30.relationLc1437Part2, Seg30.relationLc1437Part3, Seg30.relationLc1437Part4, Seg30.relationLc1437Part5, Seg30.relationLc1437Part6, Seg30.relationLc1437Part7]
  rw [seg30AccX248_sum]
  ring

theorem seg30_lc1438 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1438 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY248 rho + rho 30110 := by
  simp only [Seg30.relationLc1438, Seg30.relationLc1438Part0, Seg30.relationLc1438Part1, Seg30.relationLc1438Part2, Seg30.relationLc1438Part3, Seg30.relationLc1438Part4, Seg30.relationLc1438Part5, Seg30.relationLc1438Part6, Seg30.relationLc1438Part7]
  rw [seg30AccY248_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
