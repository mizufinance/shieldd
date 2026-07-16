import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1229 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1229 rho = seg30AccX219 rho + seg30AccY219 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1229, Seg30.relationLc1229Part0, Seg30.relationLc1229Part1, Seg30.relationLc1229Part2, Seg30.relationLc1229Part3, Seg30.relationLc1229Part4, Seg30.relationLc1229Part5, Seg30.relationLc1229Part6, Seg30.relationLc1229Part7, Seg30.relationLc1229Part8, Seg30.relationLc1229Part9, Seg30.relationLc1229Part10, Seg30.relationLc1229Part11, Seg30.relationLc1229Part12, Seg30.relationLc1229Part13]
  rw [seg30AccX219_sum, seg30AccY219_sum]
  ring

theorem seg30_lc1230 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1230 rho = 664720289368771774607689558907679234755924170859141298034878778977921393150*seg30AccX219 rho + 3852354410364297846567328813030532193415590370172629429674586400220246585410*rho 28317 := by
  simp only [Seg30.relationLc1230, Seg30.relationLc1230Part0, Seg30.relationLc1230Part1, Seg30.relationLc1230Part2, Seg30.relationLc1230Part3, Seg30.relationLc1230Part4, Seg30.relationLc1230Part5, Seg30.relationLc1230Part6]
  rw [seg30AccX219_sum]
  ring

theorem seg30_lc1231 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1231 rho = 1840999688597703629631039258546352622862511100796735162417886474873228693825*seg30AccY219 rho + 1840999688597703629631039258546352622862511100796735162417886474873228693825 + 1673511469619955977518183988565504897056510131010753193051227192168730177644*rho 28317 := by
  simp only [Seg30.relationLc1231, Seg30.relationLc1231Part0, Seg30.relationLc1231Part1, Seg30.relationLc1231Part2, Seg30.relationLc1231Part3, Seg30.relationLc1231Part4, Seg30.relationLc1231Part5, Seg30.relationLc1231Part6]
  rw [seg30AccY219_sum]
  ring

theorem seg30_lc1232 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1232 rho = 1509657088705954584862288366931791726639437790517727113003330335972982095490*seg30AccX219 rho + 1840999688597703629631039258546352622862511100796735162417886474873228693825*seg30AccY219 rho + 1840999688597703629631039258546352622862511100796735162417886474873228693825 + 7992060264098102768861749592822150277097207942271381091284693659157662692314*rho 28317 := by
  simp only [Seg30.relationLc1232, Seg30.relationLc1232Part0, Seg30.relationLc1232Part1, Seg30.relationLc1232Part2, Seg30.relationLc1232Part3, Seg30.relationLc1232Part4, Seg30.relationLc1232Part5, Seg30.relationLc1232Part6, Seg30.relationLc1232Part7, Seg30.relationLc1232Part8, Seg30.relationLc1232Part9, Seg30.relationLc1232Part10, Seg30.relationLc1232Part11, Seg30.relationLc1232Part12, Seg30.relationLc1232Part13]
  rw [seg30AccX219_sum, seg30AccY219_sum]
  ring

theorem seg30_lc1233 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1233 rho = 6934804660722415839386536571849754804736461544636336714931903119944427143551*seg30AccX219 rho + 6603462060830666794617785680235193908513388234357328665517346981044180545216*seg30AccY219 rho + 6603462060830666794617785680235193908513388234357328665517346981044180545216 + 452401485330267655387075345959396254278691392882682736650539796759746546727*rho 28317 := by
  simp only [Seg30.relationLc1233, Seg30.relationLc1233Part0, Seg30.relationLc1233Part1, Seg30.relationLc1233Part2, Seg30.relationLc1233Part3, Seg30.relationLc1233Part4, Seg30.relationLc1233Part5, Seg30.relationLc1233Part6, Seg30.relationLc1233Part7, Seg30.relationLc1233Part8, Seg30.relationLc1233Part9, Seg30.relationLc1233Part10, Seg30.relationLc1233Part11, Seg30.relationLc1233Part12, Seg30.relationLc1233Part13]
  rw [seg30AccX219_sum, seg30AccY219_sum]
  ring

theorem seg30_lc1234 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1234 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX219 rho + rho 29876 := by
  simp only [Seg30.relationLc1234, Seg30.relationLc1234Part0, Seg30.relationLc1234Part1, Seg30.relationLc1234Part2, Seg30.relationLc1234Part3, Seg30.relationLc1234Part4, Seg30.relationLc1234Part5, Seg30.relationLc1234Part6]
  rw [seg30AccX219_sum]
  ring

theorem seg30_lc1235 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1235 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY219 rho + rho 29878 := by
  simp only [Seg30.relationLc1235, Seg30.relationLc1235Part0, Seg30.relationLc1235Part1, Seg30.relationLc1235Part2, Seg30.relationLc1235Part3, Seg30.relationLc1235Part4, Seg30.relationLc1235Part5, Seg30.relationLc1235Part6]
  rw [seg30AccY219_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
