import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc921 (rho : Nat -> Seg30.F) :
    Seg30.relationLc921 rho = seg30AccX175 rho + seg30AccY175 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc921, Seg30.relationLc921Part0, Seg30.relationLc921Part1, Seg30.relationLc921Part2, Seg30.relationLc921Part3, Seg30.relationLc921Part4, Seg30.relationLc921Part5, Seg30.relationLc921Part6, Seg30.relationLc921Part7, Seg30.relationLc921Part8, Seg30.relationLc921Part9, Seg30.relationLc921Part10]
  rw [seg30AccX175_sum, seg30AccY175_sum]
  ring

theorem seg30_lc922 (rho : Nat -> Seg30.F) :
    Seg30.relationLc922 rho = 6702204841445727638528880424146252742509699068478151320104714009823083275415*seg30AccX175 rho + 4999806508068045698348875557979956868073647327969091591668035692677795707070*rho 28311 := by
  simp only [Seg30.relationLc922, Seg30.relationLc922Part0, Seg30.relationLc922Part1, Seg30.relationLc922Part2, Seg30.relationLc922Part3, Seg30.relationLc922Part4, Seg30.relationLc922Part5]
  rw [seg30AccX175_sum]
  ring

theorem seg30_lc923 (rho : Nat -> Seg30.F) :
    Seg30.relationLc923 rho = 1700106354495850796018023562959797428426666584760171565664703482726150880416*seg30AccY175 rho + 1700106354495850796018023562959797428426666584760171565664703482726150880416 + 4804741959618461566501157126025254191411098413854841475821479664228711646636*rho 28311 := by
  simp only [Seg30.relationLc923, Seg30.relationLc923Part0, Seg30.relationLc923Part1, Seg30.relationLc923Part2, Seg30.relationLc923Part3, Seg30.relationLc923Part4, Seg30.relationLc923Part5]
  rw [seg30AccY175_sum]
  ring

theorem seg30_lc924 (rho : Nat -> Seg30.F) :
    Seg30.relationLc924 rho = 5480915999245631168211263078595159700178507909953804453516439022710342665275*seg30AccX175 rho + 1700106354495850796018023562959797428426666584760171565664703482726150880416*seg30AccY175 rho + 1700106354495850796018023562959797428426666584760171565664703482726150880416 + 4619114971633147838356065303668291708546447103650487558284242787084127527699*rho 28311 := by
  simp only [Seg30.relationLc924, Seg30.relationLc924Part0, Seg30.relationLc924Part1, Seg30.relationLc924Part2, Seg30.relationLc924Part3, Seg30.relationLc924Part4, Seg30.relationLc924Part5, Seg30.relationLc924Part6, Seg30.relationLc924Part7, Seg30.relationLc924Part8, Seg30.relationLc924Part9, Seg30.relationLc924Part10]
  rw [seg30AccX175_sum, seg30AccY175_sum]
  ring

theorem seg30_lc925 (rho : Nat -> Seg30.F) :
    Seg30.relationLc925 rho = 2963545750182739256037561860186386831197391425200259374418794433207066573766*seg30AccX175 rho + 6744355394932519628230801375821749102949232750393892262270529973191258358625*seg30AccY175 rho + 6744355394932519628230801375821749102949232750393892262270529973191258358625 + 3825346777795222585892759635113254822829452231503576269650990668833281711342*rho 28311 := by
  simp only [Seg30.relationLc925, Seg30.relationLc925Part0, Seg30.relationLc925Part1, Seg30.relationLc925Part2, Seg30.relationLc925Part3, Seg30.relationLc925Part4, Seg30.relationLc925Part5, Seg30.relationLc925Part6, Seg30.relationLc925Part7, Seg30.relationLc925Part8, Seg30.relationLc925Part9, Seg30.relationLc925Part10]
  rw [seg30AccX175_sum, seg30AccY175_sum]
  ring

theorem seg30_lc926 (rho : Nat -> Seg30.F) :
    Seg30.relationLc926 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX175 rho + rho 29518 := by
  simp only [Seg30.relationLc926, Seg30.relationLc926Part0, Seg30.relationLc926Part1, Seg30.relationLc926Part2, Seg30.relationLc926Part3, Seg30.relationLc926Part4, Seg30.relationLc926Part5]
  rw [seg30AccX175_sum]
  ring

theorem seg30_lc927 (rho : Nat -> Seg30.F) :
    Seg30.relationLc927 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY175 rho + rho 29520 := by
  simp only [Seg30.relationLc927, Seg30.relationLc927Part0, Seg30.relationLc927Part1, Seg30.relationLc927Part2, Seg30.relationLc927Part3, Seg30.relationLc927Part4, Seg30.relationLc927Part5]
  rw [seg30AccY175_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
