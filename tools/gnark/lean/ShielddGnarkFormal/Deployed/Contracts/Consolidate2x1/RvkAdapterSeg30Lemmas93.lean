import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1390 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1390 rho = seg30AccX242 rho + seg30AccY242 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1390, Seg30.relationLc1390Part0, Seg30.relationLc1390Part1, Seg30.relationLc1390Part2, Seg30.relationLc1390Part3, Seg30.relationLc1390Part4, Seg30.relationLc1390Part5, Seg30.relationLc1390Part6, Seg30.relationLc1390Part7, Seg30.relationLc1390Part8, Seg30.relationLc1390Part9, Seg30.relationLc1390Part10, Seg30.relationLc1390Part11, Seg30.relationLc1390Part12, Seg30.relationLc1390Part13, Seg30.relationLc1390Part14, Seg30.relationLc1390Part15]
  rw [seg30AccX242_sum, seg30AccY242_sum]
  ring

theorem seg30_lc1391 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1391 rho = 5101607293481150265259843140857517366059282301462055240221117720675950563116*seg30AccX242 rho + 6746698226507997162075746128145595460723895925172237235437716251178243576708*rho 28317 := by
  simp only [Seg30.relationLc1391, Seg30.relationLc1391Part0, Seg30.relationLc1391Part1, Seg30.relationLc1391Part2, Seg30.relationLc1391Part3, Seg30.relationLc1391Part4, Seg30.relationLc1391Part5, Seg30.relationLc1391Part6, Seg30.relationLc1391Part7]
  rw [seg30AccX242_sum]
  ring

theorem seg30_lc1392 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1392 rho = 7928334389735677851481765995037547084539024608531321830070540868699457609029*seg30AccY242 rho + 7928334389735677851481765995037547084539024608531321830070540868699457609029 + 3390762984871091373183635872182357731676485092669673645809438422516163918512*rho 28317 := by
  simp only [Seg30.relationLc1392, Seg30.relationLc1392Part0, Seg30.relationLc1392Part1, Seg30.relationLc1392Part2, Seg30.relationLc1392Part3, Seg30.relationLc1392Part4, Seg30.relationLc1392Part5, Seg30.relationLc1392Part6, Seg30.relationLc1392Part7]
  rw [seg30AccY242_sum]
  ring

theorem seg30_lc1393 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1393 rho = 8420993179931060201291863806273047226041134750011751838788859413089676457648*seg30AccX242 rho + 7928334389735677851481765995037547084539024608531321830070540868699457609029*seg30AccY242 rho + 7928334389735677851481765995037547084539024608531321830070540868699457609029 + 7149817367346509396140437084976314743801586914044130455468621302689674762884*rho 28317 := by
  simp only [Seg30.relationLc1393, Seg30.relationLc1393Part0, Seg30.relationLc1393Part1, Seg30.relationLc1393Part2, Seg30.relationLc1393Part3, Seg30.relationLc1393Part4, Seg30.relationLc1393Part5, Seg30.relationLc1393Part6, Seg30.relationLc1393Part7, Seg30.relationLc1393Part8, Seg30.relationLc1393Part9, Seg30.relationLc1393Part10, Seg30.relationLc1393Part11, Seg30.relationLc1393Part12, Seg30.relationLc1393Part13, Seg30.relationLc1393Part14, Seg30.relationLc1393Part15]
  rw [seg30AccX242_sum, seg30AccY242_sum]
  ring

theorem seg30_lc1394 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1394 rho = 23468569497310222956961132508499305334764585142311989146374042827732781393*seg30AccX242 rho + 516127359692692572767058943743999446836874726622741997864692587217951630012*seg30AccY242 rho + 516127359692692572767058943743999446836874726622741997864692587217951630012 + 1294644382081861028108387853805231787574312421109933372466612153227734476157*rho 28317 := by
  simp only [Seg30.relationLc1394, Seg30.relationLc1394Part0, Seg30.relationLc1394Part1, Seg30.relationLc1394Part2, Seg30.relationLc1394Part3, Seg30.relationLc1394Part4, Seg30.relationLc1394Part5, Seg30.relationLc1394Part6, Seg30.relationLc1394Part7, Seg30.relationLc1394Part8, Seg30.relationLc1394Part9, Seg30.relationLc1394Part10, Seg30.relationLc1394Part11, Seg30.relationLc1394Part12, Seg30.relationLc1394Part13, Seg30.relationLc1394Part14, Seg30.relationLc1394Part15]
  rw [seg30AccX242_sum, seg30AccY242_sum]
  ring

theorem seg30_lc1395 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1395 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX242 rho + rho 30060 := by
  simp only [Seg30.relationLc1395, Seg30.relationLc1395Part0, Seg30.relationLc1395Part1, Seg30.relationLc1395Part2, Seg30.relationLc1395Part3, Seg30.relationLc1395Part4, Seg30.relationLc1395Part5, Seg30.relationLc1395Part6, Seg30.relationLc1395Part7]
  rw [seg30AccX242_sum]
  ring

theorem seg30_lc1396 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1396 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY242 rho + rho 30062 := by
  simp only [Seg30.relationLc1396, Seg30.relationLc1396Part0, Seg30.relationLc1396Part1, Seg30.relationLc1396Part2, Seg30.relationLc1396Part3, Seg30.relationLc1396Part4, Seg30.relationLc1396Part5, Seg30.relationLc1396Part6, Seg30.relationLc1396Part7]
  rw [seg30AccY242_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
