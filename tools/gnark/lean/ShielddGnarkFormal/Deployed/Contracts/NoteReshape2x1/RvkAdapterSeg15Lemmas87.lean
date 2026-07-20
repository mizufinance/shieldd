import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1348 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1348 rho = seg15AccX236 rho + seg15AccY236 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc1348, Seg15.relationLc1348Part0, Seg15.relationLc1348Part1, Seg15.relationLc1348Part2, Seg15.relationLc1348Part3, Seg15.relationLc1348Part4, Seg15.relationLc1348Part5, Seg15.relationLc1348Part6, Seg15.relationLc1348Part7, Seg15.relationLc1348Part8, Seg15.relationLc1348Part9, Seg15.relationLc1348Part10, Seg15.relationLc1348Part11, Seg15.relationLc1348Part12, Seg15.relationLc1348Part13, Seg15.relationLc1348Part14]
  rw [seg15AccX236_sum, seg15AccY236_sum]
  ring

theorem seg15_lc1349 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1349 rho = 5108019869792056471845548391669367315944996432535285954875015076492812536188*seg15AccX236 rho + 4064288127943839895562289258484952130157397309295205997450938047822402682264*rho 16130 := by
  simp only [Seg15.relationLc1349, Seg15.relationLc1349Part0, Seg15.relationLc1349Part1, Seg15.relationLc1349Part2, Seg15.relationLc1349Part3, Seg15.relationLc1349Part4, Seg15.relationLc1349Part5, Seg15.relationLc1349Part6, Seg15.relationLc1349Part7]
  rw [seg15AccX236_sum]
  ring

theorem seg15_lc1350 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1350 rho = 4907858296313307191312286640678462406911893830587231624615571332339052272968*seg15AccY236 rho + 4907858296313307191312286640678462406911893830587231624615571332339052272968 + 5157899098305688618519720185772888808299554434283422179554938535806754060899*rho 16130 := by
  simp only [Seg15.relationLc1350, Seg15.relationLc1350Part0, Seg15.relationLc1350Part1, Seg15.relationLc1350Part2, Seg15.relationLc1350Part3, Seg15.relationLc1350Part4, Seg15.relationLc1350Part5, Seg15.relationLc1350Part6, Seg15.relationLc1350Part7]
  rw [seg15AccY236_sum]
  ring

theorem seg15_lc1351 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1351 rho = 1936006471524072952681904139698278572336334768738545996321104457653538565360*seg15AccX236 rho + 4907858296313307191312286640678462406911893830587231624615571332339052272968*seg15AccY236 rho + 4907858296313307191312286640678462406911893830587231624615571332339052272968 + 779081728816674181279618765775471243739515751437635085090502955742286045376*rho 16130 := by
  simp only [Seg15.relationLc1351, Seg15.relationLc1351Part0, Seg15.relationLc1351Part1, Seg15.relationLc1351Part2, Seg15.relationLc1351Part3, Seg15.relationLc1351Part4, Seg15.relationLc1351Part5, Seg15.relationLc1351Part6, Seg15.relationLc1351Part7, Seg15.relationLc1351Part8, Seg15.relationLc1351Part9, Seg15.relationLc1351Part10, Seg15.relationLc1351Part11, Seg15.relationLc1351Part12, Seg15.relationLc1351Part13, Seg15.relationLc1351Part14]
  rw [seg15AccX236_sum, seg15AccY236_sum]
  ring

theorem seg15_lc1352 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1352 rho = 6508455277904297471566920799083267959039564566415517831614128998263870673681*seg15AccX236 rho + 3536603453115063232936538298103084124464005504566832203319662123578356966073*seg15AccY236 rho + 3536603453115063232936538298103084124464005504566832203319662123578356966073 + 7665380020611696242969206173006075287636383583716428742844730500175123193665*rho 16130 := by
  simp only [Seg15.relationLc1352, Seg15.relationLc1352Part0, Seg15.relationLc1352Part1, Seg15.relationLc1352Part2, Seg15.relationLc1352Part3, Seg15.relationLc1352Part4, Seg15.relationLc1352Part5, Seg15.relationLc1352Part6, Seg15.relationLc1352Part7, Seg15.relationLc1352Part8, Seg15.relationLc1352Part9, Seg15.relationLc1352Part10, Seg15.relationLc1352Part11, Seg15.relationLc1352Part12, Seg15.relationLc1352Part13, Seg15.relationLc1352Part14]
  rw [seg15AccX236_sum, seg15AccY236_sum]
  ring

theorem seg15_lc1353 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1353 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX236 rho + rho 17825 := by
  simp only [Seg15.relationLc1353, Seg15.relationLc1353Part0, Seg15.relationLc1353Part1, Seg15.relationLc1353Part2, Seg15.relationLc1353Part3, Seg15.relationLc1353Part4, Seg15.relationLc1353Part5, Seg15.relationLc1353Part6, Seg15.relationLc1353Part7]
  rw [seg15AccX236_sum]
  ring

theorem seg15_lc1354 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1354 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY236 rho + rho 17827 := by
  simp only [Seg15.relationLc1354, Seg15.relationLc1354Part0, Seg15.relationLc1354Part1, Seg15.relationLc1354Part2, Seg15.relationLc1354Part3, Seg15.relationLc1354Part4, Seg15.relationLc1354Part5, Seg15.relationLc1354Part6, Seg15.relationLc1354Part7]
  rw [seg15AccY236_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
