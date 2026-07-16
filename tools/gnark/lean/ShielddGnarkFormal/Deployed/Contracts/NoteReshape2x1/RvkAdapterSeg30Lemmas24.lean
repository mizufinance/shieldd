import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc907 (rho : Nat -> Seg30.F) :
    Seg30.relationLc907 rho = seg30AccX173 rho + seg30AccY173 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc907, Seg30.relationLc907Part0, Seg30.relationLc907Part1, Seg30.relationLc907Part2, Seg30.relationLc907Part3, Seg30.relationLc907Part4, Seg30.relationLc907Part5, Seg30.relationLc907Part6, Seg30.relationLc907Part7, Seg30.relationLc907Part8, Seg30.relationLc907Part9, Seg30.relationLc907Part10]
  rw [seg30AccX173_sum, seg30AccY173_sum]
  ring

theorem seg30_lc908 (rho : Nat -> Seg30.F) :
    Seg30.relationLc908 rho = 128578420191189475828004736954302402807092265377785820974002246751249439768*seg30AccX173 rho + 6133142630962635046066632879248925428545680843984799411895820682923505300946*rho 28317 := by
  simp only [Seg30.relationLc908, Seg30.relationLc908Part0, Seg30.relationLc908Part1, Seg30.relationLc908Part2, Seg30.relationLc908Part3, Seg30.relationLc908Part4, Seg30.relationLc908Part5]
  rw [seg30AccX173_sum]
  ring

theorem seg30_lc909 (rho : Nat -> Seg30.F) :
    Seg30.relationLc909 rho = 4088186093458389865801225101755579684555960680192522280960219533993562873604*seg30AccY173 rho + 4088186093458389865801225101755579684555960680192522280960219533993562873604 + 1535852898821212495215578524505569457662535397325008307380353931748700029929*rho 28317 := by
  simp only [Seg30.relationLc909, Seg30.relationLc909Part0, Seg30.relationLc909Part1, Seg30.relationLc909Part2, Seg30.relationLc909Part3, Seg30.relationLc909Part4, Seg30.relationLc909Part5]
  rw [seg30AccY173_sum]
  ring

theorem seg30_lc910 (rho : Nat -> Seg30.F) :
    Seg30.relationLc910 rho = 4223671063160032737674876692232992754489172786389661777501195549201574514939*seg30AccX173 rho + 4088186093458389865801225101755579684555960680192522280960219533993562873604*seg30AccY173 rho + 4088186093458389865801225101755579684555960680192522280960219533993562873604 + 4752424945982281221773743143002102869284789590066205990775724436544444528505*rho 28317 := by
  simp only [Seg30.relationLc910, Seg30.relationLc910Part0, Seg30.relationLc910Part1, Seg30.relationLc910Part2, Seg30.relationLc910Part3, Seg30.relationLc910Part4, Seg30.relationLc910Part5, Seg30.relationLc910Part6, Seg30.relationLc910Part7, Seg30.relationLc910Part8, Seg30.relationLc910Part9, Seg30.relationLc910Part10]
  rw [seg30AccX173_sum, seg30AccY173_sum]
  ring

theorem seg30_lc911 (rho : Nat -> Seg30.F) :
    Seg30.relationLc911 rho = 4220790686268337686573948246548553776886726548764402050434037906715834724102*seg30AccX173 rho + 4356275655969980558447599837025966846819938654961541546975013921923846365437*seg30AccY173 rho + 4356275655969980558447599837025966846819938654961541546975013921923846365437 + 3692036803446089202475081795779443662091109745087857837159509019372964710536*rho 28317 := by
  simp only [Seg30.relationLc911, Seg30.relationLc911Part0, Seg30.relationLc911Part1, Seg30.relationLc911Part2, Seg30.relationLc911Part3, Seg30.relationLc911Part4, Seg30.relationLc911Part5, Seg30.relationLc911Part6, Seg30.relationLc911Part7, Seg30.relationLc911Part8, Seg30.relationLc911Part9, Seg30.relationLc911Part10]
  rw [seg30AccX173_sum, seg30AccY173_sum]
  ring

theorem seg30_lc912 (rho : Nat -> Seg30.F) :
    Seg30.relationLc912 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX173 rho + rho 29508 := by
  simp only [Seg30.relationLc912, Seg30.relationLc912Part0, Seg30.relationLc912Part1, Seg30.relationLc912Part2, Seg30.relationLc912Part3, Seg30.relationLc912Part4, Seg30.relationLc912Part5]
  rw [seg30AccX173_sum]
  ring

theorem seg30_lc913 (rho : Nat -> Seg30.F) :
    Seg30.relationLc913 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY173 rho + rho 29510 := by
  simp only [Seg30.relationLc913, Seg30.relationLc913Part0, Seg30.relationLc913Part1, Seg30.relationLc913Part2, Seg30.relationLc913Part3, Seg30.relationLc913Part4, Seg30.relationLc913Part5]
  rw [seg30AccY173_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
