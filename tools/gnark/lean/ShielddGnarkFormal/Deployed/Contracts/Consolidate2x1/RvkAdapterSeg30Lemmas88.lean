import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1355 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1355 rho = seg30AccX237 rho + seg30AccY237 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1355, Seg30.relationLc1355Part0, Seg30.relationLc1355Part1, Seg30.relationLc1355Part2, Seg30.relationLc1355Part3, Seg30.relationLc1355Part4, Seg30.relationLc1355Part5, Seg30.relationLc1355Part6, Seg30.relationLc1355Part7, Seg30.relationLc1355Part8, Seg30.relationLc1355Part9, Seg30.relationLc1355Part10, Seg30.relationLc1355Part11, Seg30.relationLc1355Part12, Seg30.relationLc1355Part13, Seg30.relationLc1355Part14]
  rw [seg30AccX237_sum, seg30AccY237_sum]
  ring

theorem seg30_lc1356 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1356 rho = 2758875159586716113257451409033950884644675870875090439171697944807152823915*seg30AccX237 rho + 907802197456396623474074233664053082891999652188052681086914831017372471204*rho 28317 := by
  simp only [Seg30.relationLc1356, Seg30.relationLc1356Part0, Seg30.relationLc1356Part1, Seg30.relationLc1356Part2, Seg30.relationLc1356Part3, Seg30.relationLc1356Part4, Seg30.relationLc1356Part5, Seg30.relationLc1356Part6, Seg30.relationLc1356Part7]
  rw [seg30AccX237_sum]
  ring

theorem seg30_lc1357 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1357 rho = 2652868519506863513771102772860334610209107123244578824609856963782777022786*seg30AccY237 rho + 2652868519506863513771102772860334610209107123244578824609856963782777022786 + 5908493774085841219132802642962135592237100176275034161730010450272731341509*rho 28317 := by
  simp only [Seg30.relationLc1357, Seg30.relationLc1357Part0, Seg30.relationLc1357Part1, Seg30.relationLc1357Part2, Seg30.relationLc1357Part3, Seg30.relationLc1357Part4, Seg30.relationLc1357Part5, Seg30.relationLc1357Part6, Seg30.relationLc1357Part7]
  rw [seg30AccY237_sum]
  ring

theorem seg30_lc1358 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1358 rho = 2047039018782242259736311587751448530900960936512297190495783709922658297187*seg30AccX237 rho + 2652868519506863513771102772860334610209107123244578824609856963782777022786*seg30AccY237 rho + 2652868519506863513771102772860334610209107123244578824609856963782777022786 + 5120532697905323488906157638492512265932859324616226499764883366612455925111*rho 28317 := by
  simp only [Seg30.relationLc1358, Seg30.relationLc1358Part0, Seg30.relationLc1358Part1, Seg30.relationLc1358Part2, Seg30.relationLc1358Part3, Seg30.relationLc1358Part4, Seg30.relationLc1358Part5, Seg30.relationLc1358Part6, Seg30.relationLc1358Part7, Seg30.relationLc1358Part8, Seg30.relationLc1358Part9, Seg30.relationLc1358Part10, Seg30.relationLc1358Part11, Seg30.relationLc1358Part12, Seg30.relationLc1358Part13, Seg30.relationLc1358Part14]
  rw [seg30AccX237_sum, seg30AccY237_sum]
  ring

theorem seg30_lc1359 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1359 rho = 6397422730646128164512513351030098000474938398641766637439449745994750941854*seg30AccX237 rho + 5791593229921506910477722165921211921166792211909485003325376492134632216255*seg30AccY237 rho + 5791593229921506910477722165921211921166792211909485003325376492134632216255 + 3323929051523046935342667300289034265443040010537837328170350089304953313930*rho 28317 := by
  simp only [Seg30.relationLc1359, Seg30.relationLc1359Part0, Seg30.relationLc1359Part1, Seg30.relationLc1359Part2, Seg30.relationLc1359Part3, Seg30.relationLc1359Part4, Seg30.relationLc1359Part5, Seg30.relationLc1359Part6, Seg30.relationLc1359Part7, Seg30.relationLc1359Part8, Seg30.relationLc1359Part9, Seg30.relationLc1359Part10, Seg30.relationLc1359Part11, Seg30.relationLc1359Part12, Seg30.relationLc1359Part13, Seg30.relationLc1359Part14]
  rw [seg30AccX237_sum, seg30AccY237_sum]
  ring

theorem seg30_lc1360 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1360 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX237 rho + rho 30020 := by
  simp only [Seg30.relationLc1360, Seg30.relationLc1360Part0, Seg30.relationLc1360Part1, Seg30.relationLc1360Part2, Seg30.relationLc1360Part3, Seg30.relationLc1360Part4, Seg30.relationLc1360Part5, Seg30.relationLc1360Part6, Seg30.relationLc1360Part7]
  rw [seg30AccX237_sum]
  ring

theorem seg30_lc1361 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1361 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY237 rho + rho 30022 := by
  simp only [Seg30.relationLc1361, Seg30.relationLc1361Part0, Seg30.relationLc1361Part1, Seg30.relationLc1361Part2, Seg30.relationLc1361Part3, Seg30.relationLc1361Part4, Seg30.relationLc1361Part5, Seg30.relationLc1361Part6, Seg30.relationLc1361Part7]
  rw [seg30AccY237_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
