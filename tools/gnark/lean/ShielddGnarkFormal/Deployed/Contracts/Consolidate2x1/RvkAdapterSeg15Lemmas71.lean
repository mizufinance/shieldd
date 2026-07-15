import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc1236 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1236 rho = seg15AccX220 rho + seg15AccY220 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1236, Seg15.relationLc1236Part0, Seg15.relationLc1236Part1, Seg15.relationLc1236Part2, Seg15.relationLc1236Part3, Seg15.relationLc1236Part4, Seg15.relationLc1236Part5, Seg15.relationLc1236Part6, Seg15.relationLc1236Part7, Seg15.relationLc1236Part8, Seg15.relationLc1236Part9, Seg15.relationLc1236Part10, Seg15.relationLc1236Part11, Seg15.relationLc1236Part12, Seg15.relationLc1236Part13]
  rw [seg15AccX220_sum, seg15AccY220_sum]
  ring

theorem seg15_lc1237 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1237 rho = 5791789347728941516993523159659494889333240044800236722540434826636000096086*seg15AccX220 rho + 4828905915229688026472990501082234424529133778340273211941412939713368772977*rho 16136 := by
  simp only [Seg15.relationLc1237, Seg15.relationLc1237Part0, Seg15.relationLc1237Part1, Seg15.relationLc1237Part2, Seg15.relationLc1237Part3, Seg15.relationLc1237Part4, Seg15.relationLc1237Part5, Seg15.relationLc1237Part6]
  rw [seg15AccX220_sum]
  ring

theorem seg15_lc1238 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1238 rho = 6570330944860596111059142108479099720512137819754909616625358705125934600095*seg15AccY220 rho + 6570330944860596111059142108479099720512137819754909616625358705125934600095 + 4846688529128689085673653848924591249673793542413264056059586517802268792870*rho 16136 := by
  simp only [Seg15.relationLc1238, Seg15.relationLc1238Part0, Seg15.relationLc1238Part1, Seg15.relationLc1238Part2, Seg15.relationLc1238Part3, Seg15.relationLc1238Part4, Seg15.relationLc1238Part5, Seg15.relationLc1238Part6]
  rw [seg15AccY220_sum]
  ring

theorem seg15_lc1239 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1239 rho = 3870548444408008476887576047147739124234881800694480163715625136648901154230*seg15AccX220 rho + 6570330944860596111059142108479099720512137819754909616625358705125934600095*seg15AccY220 rho + 6570330944860596111059142108479099720512137819754909616625358705125934600095 + 3193496721864086105491981762444090318806529963256406885279806050088467766475*rho 16136 := by
  simp only [Seg15.relationLc1239, Seg15.relationLc1239Part0, Seg15.relationLc1239Part1, Seg15.relationLc1239Part2, Seg15.relationLc1239Part3, Seg15.relationLc1239Part4, Seg15.relationLc1239Part5, Seg15.relationLc1239Part6, Seg15.relationLc1239Part7, Seg15.relationLc1239Part8, Seg15.relationLc1239Part9, Seg15.relationLc1239Part10, Seg15.relationLc1239Part11, Seg15.relationLc1239Part12, Seg15.relationLc1239Part13]
  rw [seg15AccX220_sum, seg15AccY220_sum]
  ring

theorem seg15_lc1240 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1240 rho = 4573913305020361947361248891633807407141017534459583664219608319268508084811*seg15AccX220 rho + 1874130804567774313189682830302446810863761515399154211309874750791474638946*seg15AccY220 rho + 1874130804567774313189682830302446810863761515399154211309874750791474638946 + 5250965027564284318756843176337456212569369371897656942655427405828941472566*rho 16136 := by
  simp only [Seg15.relationLc1240, Seg15.relationLc1240Part0, Seg15.relationLc1240Part1, Seg15.relationLc1240Part2, Seg15.relationLc1240Part3, Seg15.relationLc1240Part4, Seg15.relationLc1240Part5, Seg15.relationLc1240Part6, Seg15.relationLc1240Part7, Seg15.relationLc1240Part8, Seg15.relationLc1240Part9, Seg15.relationLc1240Part10, Seg15.relationLc1240Part11, Seg15.relationLc1240Part12, Seg15.relationLc1240Part13]
  rw [seg15AccX220_sum, seg15AccY220_sum]
  ring

theorem seg15_lc1241 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1241 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX220 rho + rho 17703 := by
  simp only [Seg15.relationLc1241, Seg15.relationLc1241Part0, Seg15.relationLc1241Part1, Seg15.relationLc1241Part2, Seg15.relationLc1241Part3, Seg15.relationLc1241Part4, Seg15.relationLc1241Part5, Seg15.relationLc1241Part6]
  rw [seg15AccX220_sum]
  ring

theorem seg15_lc1242 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1242 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY220 rho + rho 17705 := by
  simp only [Seg15.relationLc1242, Seg15.relationLc1242Part0, Seg15.relationLc1242Part1, Seg15.relationLc1242Part2, Seg15.relationLc1242Part3, Seg15.relationLc1242Part4, Seg15.relationLc1242Part5, Seg15.relationLc1242Part6]
  rw [seg15AccY220_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
