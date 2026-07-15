import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1271 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1271 rho = seg30AccX225 rho + seg30AccY225 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1271, Seg30.relationLc1271Part0, Seg30.relationLc1271Part1, Seg30.relationLc1271Part2, Seg30.relationLc1271Part3, Seg30.relationLc1271Part4, Seg30.relationLc1271Part5, Seg30.relationLc1271Part6, Seg30.relationLc1271Part7, Seg30.relationLc1271Part8, Seg30.relationLc1271Part9, Seg30.relationLc1271Part10, Seg30.relationLc1271Part11, Seg30.relationLc1271Part12, Seg30.relationLc1271Part13, Seg30.relationLc1271Part14]
  rw [seg30AccX225_sum, seg30AccY225_sum]
  ring

theorem seg30_lc1272 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1272 rho = 230866951924261299928005816650156310418793511476899823886516576488765052397*seg30AccX225 rho + 7313516269647177659283131405818770766015456623013382751654818648438686782681*rho 28317 := by
  simp only [Seg30.relationLc1272, Seg30.relationLc1272Part0, Seg30.relationLc1272Part1, Seg30.relationLc1272Part2, Seg30.relationLc1272Part3, Seg30.relationLc1272Part4, Seg30.relationLc1272Part5, Seg30.relationLc1272Part6, Seg30.relationLc1272Part7]
  rw [seg30AccX225_sum]
  ring

theorem seg30_lc1273 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1273 rho = 1256597705043208047069837330755860793551934832130546170224321504783783074734*seg30AccY225 rho + 1256597705043208047069837330755860793551934832130546170224321504783783074734 + 3265115896146439185665706020631741552756968807676274568772232573261777764377*rho 28317 := by
  simp only [Seg30.relationLc1273, Seg30.relationLc1273Part0, Seg30.relationLc1273Part1, Seg30.relationLc1273Part2, Seg30.relationLc1273Part3, Seg30.relationLc1273Part4, Seg30.relationLc1273Part5, Seg30.relationLc1273Part6, Seg30.relationLc1273Part7]
  rw [seg30AccY225_sum]
  ring

theorem seg30_lc1274 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1274 rho = 4785550937429094481169783615031664289316768770372470762412779276102976955409*seg30AccX225 rho + 1256597705043208047069837330755860793551934832130546170224321504783783074734*seg30AccY225 rho + 1256597705043208047069837330755860793551934832130546170224321504783783074734 + 173190824862904302519672893910340281831081648658553524491316116111121246391*rho 28317 := by
  simp only [Seg30.relationLc1274, Seg30.relationLc1274Part0, Seg30.relationLc1274Part1, Seg30.relationLc1274Part2, Seg30.relationLc1274Part3, Seg30.relationLc1274Part4, Seg30.relationLc1274Part5, Seg30.relationLc1274Part6, Seg30.relationLc1274Part7, Seg30.relationLc1274Part8, Seg30.relationLc1274Part9, Seg30.relationLc1274Part10, Seg30.relationLc1274Part11, Seg30.relationLc1274Part12, Seg30.relationLc1274Part13, Seg30.relationLc1274Part14]
  rw [seg30AccX225_sum, seg30AccY225_sum]
  ring

theorem seg30_lc1275 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1275 rho = 3658910811999275943079041323749882242059130564781593065522454179814432283632*seg30AccX225 rho + 7187864044385162377178987608025685737823964503023517657710911951133626164307*seg30AccY225 rho + 7187864044385162377178987608025685737823964503023517657710911951133626164307 + 8271270924565466121729152044871206249544817686495510303443917339806287992650*rho 28317 := by
  simp only [Seg30.relationLc1275, Seg30.relationLc1275Part0, Seg30.relationLc1275Part1, Seg30.relationLc1275Part2, Seg30.relationLc1275Part3, Seg30.relationLc1275Part4, Seg30.relationLc1275Part5, Seg30.relationLc1275Part6, Seg30.relationLc1275Part7, Seg30.relationLc1275Part8, Seg30.relationLc1275Part9, Seg30.relationLc1275Part10, Seg30.relationLc1275Part11, Seg30.relationLc1275Part12, Seg30.relationLc1275Part13, Seg30.relationLc1275Part14]
  rw [seg30AccX225_sum, seg30AccY225_sum]
  ring

theorem seg30_lc1276 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1276 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX225 rho + rho 29924 := by
  simp only [Seg30.relationLc1276, Seg30.relationLc1276Part0, Seg30.relationLc1276Part1, Seg30.relationLc1276Part2, Seg30.relationLc1276Part3, Seg30.relationLc1276Part4, Seg30.relationLc1276Part5, Seg30.relationLc1276Part6, Seg30.relationLc1276Part7]
  rw [seg30AccX225_sum]
  ring

theorem seg30_lc1277 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1277 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY225 rho + rho 29926 := by
  simp only [Seg30.relationLc1277, Seg30.relationLc1277Part0, Seg30.relationLc1277Part1, Seg30.relationLc1277Part2, Seg30.relationLc1277Part3, Seg30.relationLc1277Part4, Seg30.relationLc1277Part5, Seg30.relationLc1277Part6, Seg30.relationLc1277Part7]
  rw [seg30AccY225_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
