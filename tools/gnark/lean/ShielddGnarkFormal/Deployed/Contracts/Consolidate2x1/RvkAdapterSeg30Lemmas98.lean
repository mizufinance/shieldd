import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1425 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1425 rho = seg30AccX247 rho + seg30AccY247 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1425, Seg30.relationLc1425Part0, Seg30.relationLc1425Part1, Seg30.relationLc1425Part2, Seg30.relationLc1425Part3, Seg30.relationLc1425Part4, Seg30.relationLc1425Part5, Seg30.relationLc1425Part6, Seg30.relationLc1425Part7, Seg30.relationLc1425Part8, Seg30.relationLc1425Part9, Seg30.relationLc1425Part10, Seg30.relationLc1425Part11, Seg30.relationLc1425Part12, Seg30.relationLc1425Part13, Seg30.relationLc1425Part14, Seg30.relationLc1425Part15]
  rw [seg30AccX247_sum, seg30AccY247_sum]
  ring

theorem seg30_lc1426 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1426 rho = 5433452400507472894596995115818677673164991880881552604222095953382622985027*seg30AccX247 rho + 6394341953313109814172697215813188191256544307060807307185555637922028065142*rho 28317 := by
  simp only [Seg30.relationLc1426, Seg30.relationLc1426Part0, Seg30.relationLc1426Part1, Seg30.relationLc1426Part2, Seg30.relationLc1426Part3, Seg30.relationLc1426Part4, Seg30.relationLc1426Part5, Seg30.relationLc1426Part6, Seg30.relationLc1426Part7]
  rw [seg30AccX247_sum]
  ring

theorem seg30_lc1427 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1427 rho = 6627260208489595454201940394776925586553558217909297503373304214489441683658*seg30AccY247 rho + 6627260208489595454201940394776925586553558217909297503373304214489441683658 + 549863627905211652879844760723861940109871183668577874297564049356567101830*rho 28317 := by
  simp only [Seg30.relationLc1427, Seg30.relationLc1427Part0, Seg30.relationLc1427Part1, Seg30.relationLc1427Part2, Seg30.relationLc1427Part3, Seg30.relationLc1427Part4, Seg30.relationLc1427Part5, Seg30.relationLc1427Part6, Seg30.relationLc1427Part7]
  rw [seg30AccY247_sum]
  ring

theorem seg30_lc1428 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1428 rho = 1516826123995592268400350914245421018761636025003106304980178294955517520869*seg30AccX247 rho + 6627260208489595454201940394776925586553558217909297503373304214489441683658*seg30AccY247 rho + 6627260208489595454201940394776925586553558217909297503373304214489441683658 + 1370989624110383994528000472170007693795536542658052057975885452276700479885*rho 28317 := by
  simp only [Seg30.relationLc1428, Seg30.relationLc1428Part0, Seg30.relationLc1428Part1, Seg30.relationLc1428Part2, Seg30.relationLc1428Part3, Seg30.relationLc1428Part4, Seg30.relationLc1428Part5, Seg30.relationLc1428Part6, Seg30.relationLc1428Part7, Seg30.relationLc1428Part8, Seg30.relationLc1428Part9, Seg30.relationLc1428Part10, Seg30.relationLc1428Part11, Seg30.relationLc1428Part12, Seg30.relationLc1428Part13, Seg30.relationLc1428Part14, Seg30.relationLc1428Part15]
  rw [seg30AccX247_sum, seg30AccY247_sum]
  ring

theorem seg30_lc1429 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1429 rho = 6927635625432778155848474024536125512614263310150957522955055160961891718172*seg30AccX247 rho + 1817201540938774970046884544004620944822341117244766324561929241427967555383*seg30AccY247 rho + 1817201540938774970046884544004620944822341117244766324561929241427967555383 + 7073472125317986429720824466611538837580362792496011769959348003640708759156*rho 28317 := by
  simp only [Seg30.relationLc1429, Seg30.relationLc1429Part0, Seg30.relationLc1429Part1, Seg30.relationLc1429Part2, Seg30.relationLc1429Part3, Seg30.relationLc1429Part4, Seg30.relationLc1429Part5, Seg30.relationLc1429Part6, Seg30.relationLc1429Part7, Seg30.relationLc1429Part8, Seg30.relationLc1429Part9, Seg30.relationLc1429Part10, Seg30.relationLc1429Part11, Seg30.relationLc1429Part12, Seg30.relationLc1429Part13, Seg30.relationLc1429Part14, Seg30.relationLc1429Part15]
  rw [seg30AccX247_sum, seg30AccY247_sum]
  ring

theorem seg30_lc1430 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1430 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX247 rho + rho 30100 := by
  simp only [Seg30.relationLc1430, Seg30.relationLc1430Part0, Seg30.relationLc1430Part1, Seg30.relationLc1430Part2, Seg30.relationLc1430Part3, Seg30.relationLc1430Part4, Seg30.relationLc1430Part5, Seg30.relationLc1430Part6, Seg30.relationLc1430Part7]
  rw [seg30AccX247_sum]
  ring

theorem seg30_lc1431 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1431 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY247 rho + rho 30102 := by
  simp only [Seg30.relationLc1431, Seg30.relationLc1431Part0, Seg30.relationLc1431Part1, Seg30.relationLc1431Part2, Seg30.relationLc1431Part3, Seg30.relationLc1431Part4, Seg30.relationLc1431Part5, Seg30.relationLc1431Part6, Seg30.relationLc1431Part7]
  rw [seg30AccY247_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
