import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1159 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1159 rho = seg15AccX209 rho + seg15AccY209 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc1159, Seg15.relationLc1159Part0, Seg15.relationLc1159Part1, Seg15.relationLc1159Part2, Seg15.relationLc1159Part3, Seg15.relationLc1159Part4, Seg15.relationLc1159Part5, Seg15.relationLc1159Part6, Seg15.relationLc1159Part7, Seg15.relationLc1159Part8, Seg15.relationLc1159Part9, Seg15.relationLc1159Part10, Seg15.relationLc1159Part11, Seg15.relationLc1159Part12, Seg15.relationLc1159Part13]
  rw [seg15AccX209_sum, seg15AccY209_sum]
  ring

theorem seg15_lc1160 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1160 rho = 6473138200877952229647344942848384561493038639920753725556359415039909781089*seg15AccX209 rho + 1572966202733867531866893324526713710621158187380404321611807179386972464120*rho 16130 := by
  simp only [Seg15.relationLc1160, Seg15.relationLc1160Part0, Seg15.relationLc1160Part1, Seg15.relationLc1160Part2, Seg15.relationLc1160Part3, Seg15.relationLc1160Part4, Seg15.relationLc1160Part5, Seg15.relationLc1160Part6]
  rw [seg15AccX209_sum]
  ring

theorem seg15_lc1161 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1161 rho = 6676673304779201579792702677689318888868515796427600730605787578664193959720*seg15AccY209 rho + 6676673304779201579792702677689318888868515796427600730605787578664193959720 + 7617743523713161405130236323424275117965454145619594398246121523625471376046*rho 16130 := by
  simp only [Seg15.relationLc1161, Seg15.relationLc1161Part0, Seg15.relationLc1161Part1, Seg15.relationLc1161Part2, Seg15.relationLc1161Part3, Seg15.relationLc1161Part4, Seg15.relationLc1161Part5, Seg15.relationLc1161Part6]
  rw [seg15AccY209_sum]
  ring

theorem seg15_lc1162 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1162 rho = 2928773449140146238470098330303584112185388825735261695323980730804557227096*seg15AccX209 rho + 6676673304779201579792702677689318888868515796427600730605787578664193959720*seg15AccY209 rho + 6676673304779201579792702677689318888868515796427600730605787578664193959720 + 6069693592239946129558577229494963610295269745259458365027151802540116279732*rho 16130 := by
  simp only [Seg15.relationLc1162, Seg15.relationLc1162Part0, Seg15.relationLc1162Part1, Seg15.relationLc1162Part2, Seg15.relationLc1162Part3, Seg15.relationLc1162Part4, Seg15.relationLc1162Part5, Seg15.relationLc1162Part6, Seg15.relationLc1162Part7, Seg15.relationLc1162Part8, Seg15.relationLc1162Part9, Seg15.relationLc1162Part10, Seg15.relationLc1162Part11, Seg15.relationLc1162Part12, Seg15.relationLc1162Part13]
  rw [seg15AccX209_sum, seg15AccY209_sum]
  ring

theorem seg15_lc1163 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1163 rho = 5515688300288224185778726608477962419190510509418802132611252725112852011945*seg15AccX209 rho + 1767788444649168844456122261092227642507383538726463097329445877253215279321*seg15AccY209 rho + 1767788444649168844456122261092227642507383538726463097329445877253215279321 + 2374768157188424294690247709286582921080629589894605462908081653377292959309*rho 16130 := by
  simp only [Seg15.relationLc1163, Seg15.relationLc1163Part0, Seg15.relationLc1163Part1, Seg15.relationLc1163Part2, Seg15.relationLc1163Part3, Seg15.relationLc1163Part4, Seg15.relationLc1163Part5, Seg15.relationLc1163Part6, Seg15.relationLc1163Part7, Seg15.relationLc1163Part8, Seg15.relationLc1163Part9, Seg15.relationLc1163Part10, Seg15.relationLc1163Part11, Seg15.relationLc1163Part12, Seg15.relationLc1163Part13]
  rw [seg15AccX209_sum, seg15AccY209_sum]
  ring

theorem seg15_lc1164 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1164 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX209 rho + rho 17609 := by
  simp only [Seg15.relationLc1164, Seg15.relationLc1164Part0, Seg15.relationLc1164Part1, Seg15.relationLc1164Part2, Seg15.relationLc1164Part3, Seg15.relationLc1164Part4, Seg15.relationLc1164Part5, Seg15.relationLc1164Part6]
  rw [seg15AccX209_sum]
  ring

theorem seg15_lc1165 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1165 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY209 rho + rho 17611 := by
  simp only [Seg15.relationLc1165, Seg15.relationLc1165Part0, Seg15.relationLc1165Part1, Seg15.relationLc1165Part2, Seg15.relationLc1165Part3, Seg15.relationLc1165Part4, Seg15.relationLc1165Part5, Seg15.relationLc1165Part6]
  rw [seg15AccY209_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
