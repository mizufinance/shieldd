import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1243 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1243 rho = seg30AccX221 rho + seg30AccY221 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1243, Seg30.relationLc1243Part0, Seg30.relationLc1243Part1, Seg30.relationLc1243Part2, Seg30.relationLc1243Part3, Seg30.relationLc1243Part4, Seg30.relationLc1243Part5, Seg30.relationLc1243Part6, Seg30.relationLc1243Part7, Seg30.relationLc1243Part8, Seg30.relationLc1243Part9, Seg30.relationLc1243Part10, Seg30.relationLc1243Part11, Seg30.relationLc1243Part12, Seg30.relationLc1243Part13]
  rw [seg30AccX221_sum, seg30AccY221_sum]
  ring

theorem seg30_lc1244 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1244 rho = 3572665339850325498579135525683803696736775859419263016244508576639770858362*seg30AccX221 rho + 5124414814074150176411602441813154520065508830654359745986878861746779079731*rho 28317 := by
  simp only [Seg30.relationLc1244, Seg30.relationLc1244Part0, Seg30.relationLc1244Part1, Seg30.relationLc1244Part2, Seg30.relationLc1244Part3, Seg30.relationLc1244Part4, Seg30.relationLc1244Part5, Seg30.relationLc1244Part6]
  rw [seg30AccX221_sum]
  ring

theorem seg30_lc1245 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1245 rho = 5331045109956993830571264971135024265297950271702392351376889158259487897154*seg30AccY221 rho + 5331045109956993830571264971135024265297950271702392351376889158259487897154 + 5826020781600902362789512844011047342814882089613210203743853380263811888273*rho 28317 := by
  simp only [Seg30.relationLc1245, Seg30.relationLc1245Part0, Seg30.relationLc1245Part1, Seg30.relationLc1245Part2, Seg30.relationLc1245Part3, Seg30.relationLc1245Part4, Seg30.relationLc1245Part5, Seg30.relationLc1245Part6]
  rw [seg30AccY221_sum]
  ring

theorem seg30_lc1246 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1246 rho = 3984419284434054346260560964346040255182851151424680641451159279463405473847*seg30AccX221 rho + 5331045109956993830571264971135024265297950271702392351376889158259487897154*seg30AccY221 rho + 5331045109956993830571264971135024265297950271702392351376889158259487897154 + 256776209672180712557306124199789784883037711549193371791210745777995988131*rho 28317 := by
  simp only [Seg30.relationLc1246, Seg30.relationLc1246Part0, Seg30.relationLc1246Part1, Seg30.relationLc1246Part2, Seg30.relationLc1246Part3, Seg30.relationLc1246Part4, Seg30.relationLc1246Part5, Seg30.relationLc1246Part6, Seg30.relationLc1246Part7, Seg30.relationLc1246Part8, Seg30.relationLc1246Part9, Seg30.relationLc1246Part10, Seg30.relationLc1246Part11, Seg30.relationLc1246Part12, Seg30.relationLc1246Part13]
  rw [seg30AccX221_sum, seg30AccY221_sum]
  ring

theorem seg30_lc1247 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1247 rho = 4460042464994316077988263974435506276193048183729383186484074176454003765194*seg30AccX221 rho + 3113416639471376593677559967646522266077949063451671476558344297657921341887*seg30AccY221 rho + 3113416639471376593677559967646522266077949063451671476558344297657921341887 + 8187685539756189711691518814581756746492861623604870456144022710139413250910*rho 28317 := by
  simp only [Seg30.relationLc1247, Seg30.relationLc1247Part0, Seg30.relationLc1247Part1, Seg30.relationLc1247Part2, Seg30.relationLc1247Part3, Seg30.relationLc1247Part4, Seg30.relationLc1247Part5, Seg30.relationLc1247Part6, Seg30.relationLc1247Part7, Seg30.relationLc1247Part8, Seg30.relationLc1247Part9, Seg30.relationLc1247Part10, Seg30.relationLc1247Part11, Seg30.relationLc1247Part12, Seg30.relationLc1247Part13]
  rw [seg30AccX221_sum, seg30AccY221_sum]
  ring

theorem seg30_lc1248 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1248 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX221 rho + rho 29892 := by
  simp only [Seg30.relationLc1248, Seg30.relationLc1248Part0, Seg30.relationLc1248Part1, Seg30.relationLc1248Part2, Seg30.relationLc1248Part3, Seg30.relationLc1248Part4, Seg30.relationLc1248Part5, Seg30.relationLc1248Part6]
  rw [seg30AccX221_sum]
  ring

theorem seg30_lc1249 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1249 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY221 rho + rho 29894 := by
  simp only [Seg30.relationLc1249, Seg30.relationLc1249Part0, Seg30.relationLc1249Part1, Seg30.relationLc1249Part2, Seg30.relationLc1249Part3, Seg30.relationLc1249Part4, Seg30.relationLc1249Part5, Seg30.relationLc1249Part6]
  rw [seg30AccY221_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
