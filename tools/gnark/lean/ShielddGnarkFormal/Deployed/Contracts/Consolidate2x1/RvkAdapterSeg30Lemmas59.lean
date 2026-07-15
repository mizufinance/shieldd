import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1152 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1152 rho = seg30AccX208 rho + seg30AccY208 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1152, Seg30.relationLc1152Part0, Seg30.relationLc1152Part1, Seg30.relationLc1152Part2, Seg30.relationLc1152Part3, Seg30.relationLc1152Part4, Seg30.relationLc1152Part5, Seg30.relationLc1152Part6, Seg30.relationLc1152Part7, Seg30.relationLc1152Part8, Seg30.relationLc1152Part9, Seg30.relationLc1152Part10, Seg30.relationLc1152Part11, Seg30.relationLc1152Part12, Seg30.relationLc1152Part13]
  rw [seg30AccX208_sum, seg30AccY208_sum]
  ring

theorem seg30_lc1153 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1153 rho = 1287783588031834503867680794883494161905915226350935837697378655588185476782*seg30AccX208 rho + 7313171147760440668576192520514480090443359023526454996653178547585418396775*rho 28317 := by
  simp only [Seg30.relationLc1153, Seg30.relationLc1153Part0, Seg30.relationLc1153Part1, Seg30.relationLc1153Part2, Seg30.relationLc1153Part3, Seg30.relationLc1153Part4, Seg30.relationLc1153Part5, Seg30.relationLc1153Part6]
  rw [seg30AccX208_sum]
  ring

theorem seg30_lc1154 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1154 rho = 3784676001296899466897935170773209098273264336542008530461130934325590249494*seg30AccY208 rho + 3784676001296899466897935170773209098273264336542008530461130934325590249494 + 2997961533863059133012034044481114141522043634312603237040104578955774474167*rho 28317 := by
  simp only [Seg30.relationLc1154, Seg30.relationLc1154Part0, Seg30.relationLc1154Part1, Seg30.relationLc1154Part2, Seg30.relationLc1154Part3, Seg30.relationLc1154Part4, Seg30.relationLc1154Part5, Seg30.relationLc1154Part6]
  rw [seg30AccY208_sum]
  ring

theorem seg30_lc1155 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1155 rho = 3849490768802018506684706925354873574268957067108075745416919512563343498059*seg30AccX208 rho + 3784676001296899466897935170773209098273264336542008530461130934325590249494*seg30AccY208 rho + 3784676001296899466897935170773209098273264336542008530461130934325590249494 + 277805104602724027897906504642414425709503881443840670534886370575777393588*rho 28317 := by
  simp only [Seg30.relationLc1155, Seg30.relationLc1155Part0, Seg30.relationLc1155Part1, Seg30.relationLc1155Part2, Seg30.relationLc1155Part3, Seg30.relationLc1155Part4, Seg30.relationLc1155Part5, Seg30.relationLc1155Part6, Seg30.relationLc1155Part7, Seg30.relationLc1155Part8, Seg30.relationLc1155Part9, Seg30.relationLc1155Part10, Seg30.relationLc1155Part11, Seg30.relationLc1155Part12, Seg30.relationLc1155Part13]
  rw [seg30AccX208_sum, seg30AccY208_sum]
  ring

theorem seg30_lc1156 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1156 rho = 4594970980626351917564118013426672957106942268045988082518313943354065740982*seg30AccX208 rho + 4659785748131470957350889768008337433102634998612055297474102521591818989547*seg30AccY208 rho + 4659785748131470957350889768008337433102634998612055297474102521591818989547 + 8166656644825646396350918434139132105666395453710223157400347085341631845453*rho 28317 := by
  simp only [Seg30.relationLc1156, Seg30.relationLc1156Part0, Seg30.relationLc1156Part1, Seg30.relationLc1156Part2, Seg30.relationLc1156Part3, Seg30.relationLc1156Part4, Seg30.relationLc1156Part5, Seg30.relationLc1156Part6, Seg30.relationLc1156Part7, Seg30.relationLc1156Part8, Seg30.relationLc1156Part9, Seg30.relationLc1156Part10, Seg30.relationLc1156Part11, Seg30.relationLc1156Part12, Seg30.relationLc1156Part13]
  rw [seg30AccX208_sum, seg30AccY208_sum]
  ring

theorem seg30_lc1157 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1157 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX208 rho + rho 29788 := by
  simp only [Seg30.relationLc1157, Seg30.relationLc1157Part0, Seg30.relationLc1157Part1, Seg30.relationLc1157Part2, Seg30.relationLc1157Part3, Seg30.relationLc1157Part4, Seg30.relationLc1157Part5, Seg30.relationLc1157Part6]
  rw [seg30AccX208_sum]
  ring

theorem seg30_lc1158 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1158 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY208 rho + rho 29790 := by
  simp only [Seg30.relationLc1158, Seg30.relationLc1158Part0, Seg30.relationLc1158Part1, Seg30.relationLc1158Part2, Seg30.relationLc1158Part3, Seg30.relationLc1158Part4, Seg30.relationLc1158Part5, Seg30.relationLc1158Part6]
  rw [seg30AccY208_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
