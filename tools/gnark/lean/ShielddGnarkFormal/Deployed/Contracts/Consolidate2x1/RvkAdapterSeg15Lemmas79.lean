import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc1292 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1292 rho = seg15AccX228 rho + seg15AccY228 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1292, Seg15.relationLc1292Part0, Seg15.relationLc1292Part1, Seg15.relationLc1292Part2, Seg15.relationLc1292Part3, Seg15.relationLc1292Part4, Seg15.relationLc1292Part5, Seg15.relationLc1292Part6, Seg15.relationLc1292Part7, Seg15.relationLc1292Part8, Seg15.relationLc1292Part9, Seg15.relationLc1292Part10, Seg15.relationLc1292Part11, Seg15.relationLc1292Part12, Seg15.relationLc1292Part13, Seg15.relationLc1292Part14]
  rw [seg15AccX228_sum, seg15AccY228_sum]
  ring

theorem seg15_lc1293 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1293 rho = 8005795343449612145036117745829407939494616795117852748437620276172049747902*seg15AccX228 rho + 4802774979772271385970034729279180096321539640809073194439602886238651987693*rho 16136 := by
  simp only [Seg15.relationLc1293, Seg15.relationLc1293Part0, Seg15.relationLc1293Part1, Seg15.relationLc1293Part2, Seg15.relationLc1293Part3, Seg15.relationLc1293Part4, Seg15.relationLc1293Part5, Seg15.relationLc1293Part6, Seg15.relationLc1293Part7]
  rw [seg15AccX228_sum]
  ring

theorem seg15_lc1294 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1294 rho = 615972545279460132803560543708205878635144221637755246156538630440780593542*seg15AccY228 rho + 615972545279460132803560543708205878635144221637755246156538630440780593542 + 6474623323290704998664558489372220939430902356818200455473100300981788630784*rho 16136 := by
  simp only [Seg15.relationLc1294, Seg15.relationLc1294Part0, Seg15.relationLc1294Part1, Seg15.relationLc1294Part2, Seg15.relationLc1294Part3, Seg15.relationLc1294Part4, Seg15.relationLc1294Part5, Seg15.relationLc1294Part6, Seg15.relationLc1294Part7]
  rw [seg15AccY228_sum]
  ring

theorem seg15_lc1295 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1295 rho = 5746896620463009213497640306832806199906311734702654425407263281094487929817*seg15AccX228 rho + 615972545279460132803560543708205878635144221637755246156538630440780593542*seg15AccY228 rho + 615972545279460132803560543708205878635144221637755246156538630440780593542 + 3004507892039376367240834378403203524047736042809415880464454041675868861535*rho 16136 := by
  simp only [Seg15.relationLc1295, Seg15.relationLc1295Part0, Seg15.relationLc1295Part1, Seg15.relationLc1295Part2, Seg15.relationLc1295Part3, Seg15.relationLc1295Part4, Seg15.relationLc1295Part5, Seg15.relationLc1295Part6, Seg15.relationLc1295Part7, Seg15.relationLc1295Part8, Seg15.relationLc1295Part9, Seg15.relationLc1295Part10, Seg15.relationLc1295Part11, Seg15.relationLc1295Part12, Seg15.relationLc1295Part13, Seg15.relationLc1295Part14]
  rw [seg15AccX228_sum, seg15AccY228_sum]
  ring

theorem seg15_lc1296 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1296 rho = 2697565128965361210751184631948740331469587600451409402527970174822921309224*seg15AccX228 rho + 7828489204148910291445264395073340652740755113516308581778694825476628645499*seg15AccY228 rho + 7828489204148910291445264395073340652740755113516308581778694825476628645499 + 5439953857388994057007990560378343007328163292344647947470779414241540377506*rho 16136 := by
  simp only [Seg15.relationLc1296, Seg15.relationLc1296Part0, Seg15.relationLc1296Part1, Seg15.relationLc1296Part2, Seg15.relationLc1296Part3, Seg15.relationLc1296Part4, Seg15.relationLc1296Part5, Seg15.relationLc1296Part6, Seg15.relationLc1296Part7, Seg15.relationLc1296Part8, Seg15.relationLc1296Part9, Seg15.relationLc1296Part10, Seg15.relationLc1296Part11, Seg15.relationLc1296Part12, Seg15.relationLc1296Part13, Seg15.relationLc1296Part14]
  rw [seg15AccX228_sum, seg15AccY228_sum]
  ring

theorem seg15_lc1297 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1297 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX228 rho + rho 17767 := by
  simp only [Seg15.relationLc1297, Seg15.relationLc1297Part0, Seg15.relationLc1297Part1, Seg15.relationLc1297Part2, Seg15.relationLc1297Part3, Seg15.relationLc1297Part4, Seg15.relationLc1297Part5, Seg15.relationLc1297Part6, Seg15.relationLc1297Part7]
  rw [seg15AccX228_sum]
  ring

theorem seg15_lc1298 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1298 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY228 rho + rho 17769 := by
  simp only [Seg15.relationLc1298, Seg15.relationLc1298Part0, Seg15.relationLc1298Part1, Seg15.relationLc1298Part2, Seg15.relationLc1298Part3, Seg15.relationLc1298Part4, Seg15.relationLc1298Part5, Seg15.relationLc1298Part6, Seg15.relationLc1298Part7]
  rw [seg15AccY228_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
