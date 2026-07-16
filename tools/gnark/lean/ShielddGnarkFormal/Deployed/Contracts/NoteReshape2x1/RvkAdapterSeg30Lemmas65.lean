import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1194 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1194 rho = seg30AccX214 rho + seg30AccY214 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1194, Seg30.relationLc1194Part0, Seg30.relationLc1194Part1, Seg30.relationLc1194Part2, Seg30.relationLc1194Part3, Seg30.relationLc1194Part4, Seg30.relationLc1194Part5, Seg30.relationLc1194Part6, Seg30.relationLc1194Part7, Seg30.relationLc1194Part8, Seg30.relationLc1194Part9, Seg30.relationLc1194Part10, Seg30.relationLc1194Part11, Seg30.relationLc1194Part12, Seg30.relationLc1194Part13]
  rw [seg30AccX214_sum, seg30AccY214_sum]
  ring

theorem seg30_lc1195 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1195 rho = 1264557959479100922970201115112134211560373340550096814683079276850902107265*seg30AccX214 rho + 4906366363111759234574300869375970910138001597177887940548330735732770263593*rho 28317 := by
  simp only [Seg30.relationLc1195, Seg30.relationLc1195Part0, Seg30.relationLc1195Part1, Seg30.relationLc1195Part2, Seg30.relationLc1195Part3, Seg30.relationLc1195Part4, Seg30.relationLc1195Part5, Seg30.relationLc1195Part6]
  rw [seg30AccX214_sum]
  ring

theorem seg30_lc1196 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1196 rho = 7126565839021566360196697239735121082667099440565600511776815312011045649576*seg30AccY214 rho + 7126565839021566360196697239735121082667099440565600511776815312011045649576 + 1098268939017391281895962662512300282223824169740677712283708098338841141698*rho 28317 := by
  simp only [Seg30.relationLc1196, Seg30.relationLc1196Part0, Seg30.relationLc1196Part1, Seg30.relationLc1196Part2, Seg30.relationLc1196Part3, Seg30.relationLc1196Part4, Seg30.relationLc1196Part5, Seg30.relationLc1196Part6]
  rw [seg30AccY214_sum]
  ring

theorem seg30_lc1197 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1197 rho = 5644036024513524987580717561242983972545349596496724583057239134979841163764*seg30AccX214 rho + 7126565839021566360196697239735121082667099440565600511776815312011045649576*seg30AccY214 rho + 7126565839021566360196697239735121082667099440565600511776815312011045649576 + 7037012110864121020505389498275749737223012580685533540974533716049635578635*rho 28317 := by
  simp only [Seg30.relationLc1197, Seg30.relationLc1197Part0, Seg30.relationLc1197Part1, Seg30.relationLc1197Part2, Seg30.relationLc1197Part3, Seg30.relationLc1197Part4, Seg30.relationLc1197Part5, Seg30.relationLc1197Part6, Seg30.relationLc1197Part7, Seg30.relationLc1197Part8, Seg30.relationLc1197Part9, Seg30.relationLc1197Part10, Seg30.relationLc1197Part11, Seg30.relationLc1197Part12, Seg30.relationLc1197Part13]
  rw [seg30AccX214_sum, seg30AccY214_sum]
  ring

theorem seg30_lc1198 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1198 rho = 2800425724914845436668107377538562558830549738657339244877994320937568075277*seg30AccX214 rho + 1317895910406804064052127699046425448708799894588463316158418143906363589465*seg30AccY214 rho + 1317895910406804064052127699046425448708799894588463316158418143906363589465 + 1407449638564249403743435440505796794152886754468530286960699739867773660406*rho 28317 := by
  simp only [Seg30.relationLc1198, Seg30.relationLc1198Part0, Seg30.relationLc1198Part1, Seg30.relationLc1198Part2, Seg30.relationLc1198Part3, Seg30.relationLc1198Part4, Seg30.relationLc1198Part5, Seg30.relationLc1198Part6, Seg30.relationLc1198Part7, Seg30.relationLc1198Part8, Seg30.relationLc1198Part9, Seg30.relationLc1198Part10, Seg30.relationLc1198Part11, Seg30.relationLc1198Part12, Seg30.relationLc1198Part13]
  rw [seg30AccX214_sum, seg30AccY214_sum]
  ring

theorem seg30_lc1199 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1199 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX214 rho + rho 29836 := by
  simp only [Seg30.relationLc1199, Seg30.relationLc1199Part0, Seg30.relationLc1199Part1, Seg30.relationLc1199Part2, Seg30.relationLc1199Part3, Seg30.relationLc1199Part4, Seg30.relationLc1199Part5, Seg30.relationLc1199Part6]
  rw [seg30AccX214_sum]
  ring

theorem seg30_lc1200 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1200 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY214 rho + rho 29838 := by
  simp only [Seg30.relationLc1200, Seg30.relationLc1200Part0, Seg30.relationLc1200Part1, Seg30.relationLc1200Part2, Seg30.relationLc1200Part3, Seg30.relationLc1200Part4, Seg30.relationLc1200Part5, Seg30.relationLc1200Part6]
  rw [seg30AccY214_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
