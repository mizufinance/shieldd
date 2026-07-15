import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1285 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1285 rho = seg30AccX227 rho + seg30AccY227 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1285, Seg30.relationLc1285Part0, Seg30.relationLc1285Part1, Seg30.relationLc1285Part2, Seg30.relationLc1285Part3, Seg30.relationLc1285Part4, Seg30.relationLc1285Part5, Seg30.relationLc1285Part6, Seg30.relationLc1285Part7, Seg30.relationLc1285Part8, Seg30.relationLc1285Part9, Seg30.relationLc1285Part10, Seg30.relationLc1285Part11, Seg30.relationLc1285Part12, Seg30.relationLc1285Part13, Seg30.relationLc1285Part14]
  rw [seg30AccX227_sum, seg30AccY227_sum]
  ring

theorem seg30_lc1286 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1286 rho = 4524962738914307807798123734612000272059917171761359026606240250240415183856*seg30AccX227 rho + 995428320130555585130336813757345081731043089115607568591490337949712775920*rho 28317 := by
  simp only [Seg30.relationLc1286, Seg30.relationLc1286Part0, Seg30.relationLc1286Part1, Seg30.relationLc1286Part2, Seg30.relationLc1286Part3, Seg30.relationLc1286Part4, Seg30.relationLc1286Part5, Seg30.relationLc1286Part6, Seg30.relationLc1286Part7]
  rw [seg30AccX227_sum]
  ring

theorem seg30_lc1287 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1287 rho = 6839982277198200993905199196894153768204783486790809026862012284204149052726*seg30AccY227 rho + 6839982277198200993905199196894153768204783486790809026862012284204149052726 + 5046918817069920361234594595240506121883550357632552607367130359059160801262*rho 28317 := by
  simp only [Seg30.relationLc1287, Seg30.relationLc1287Part0, Seg30.relationLc1287Part1, Seg30.relationLc1287Part2, Seg30.relationLc1287Part3, Seg30.relationLc1287Part4, Seg30.relationLc1287Part5, Seg30.relationLc1287Part6, Seg30.relationLc1287Part7]
  rw [seg30AccY227_sum]
  ring

theorem seg30_lc1288 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1288 rho = 3168520398821998675432544448650812386733185655048432861991799320028025515729*seg30AccX227 rho + 6839982277198200993905199196894153768204783486790809026862012284204149052726*seg30AccY227 rho + 6839982277198200993905199196894153768204783486790809026862012284204149052726 + 4242215223718301650013630925741887103030677810318664896385086087306011463934*rho 28317 := by
  simp only [Seg30.relationLc1288, Seg30.relationLc1288Part0, Seg30.relationLc1288Part1, Seg30.relationLc1288Part2, Seg30.relationLc1288Part3, Seg30.relationLc1288Part4, Seg30.relationLc1288Part5, Seg30.relationLc1288Part6, Seg30.relationLc1288Part7, Seg30.relationLc1288Part8, Seg30.relationLc1288Part9, Seg30.relationLc1288Part10, Seg30.relationLc1288Part11, Seg30.relationLc1288Part12, Seg30.relationLc1288Part13, Seg30.relationLc1288Part14]
  rw [seg30AccX227_sum, seg30AccY227_sum]
  ring

theorem seg30_lc1289 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1289 rho = 5275941350606371748816280490130734144642713680105630965943434135889383723312*seg30AccX227 rho + 1604479472230169430343625741887392763171115848363254801073221171713260186315*seg30AccY227 rho + 1604479472230169430343625741887392763171115848363254801073221171713260186315 + 4202246525710068774235194013039659428345221524835398931550147368611397775107*rho 28317 := by
  simp only [Seg30.relationLc1289, Seg30.relationLc1289Part0, Seg30.relationLc1289Part1, Seg30.relationLc1289Part2, Seg30.relationLc1289Part3, Seg30.relationLc1289Part4, Seg30.relationLc1289Part5, Seg30.relationLc1289Part6, Seg30.relationLc1289Part7, Seg30.relationLc1289Part8, Seg30.relationLc1289Part9, Seg30.relationLc1289Part10, Seg30.relationLc1289Part11, Seg30.relationLc1289Part12, Seg30.relationLc1289Part13, Seg30.relationLc1289Part14]
  rw [seg30AccX227_sum, seg30AccY227_sum]
  ring

theorem seg30_lc1290 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1290 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX227 rho + rho 29940 := by
  simp only [Seg30.relationLc1290, Seg30.relationLc1290Part0, Seg30.relationLc1290Part1, Seg30.relationLc1290Part2, Seg30.relationLc1290Part3, Seg30.relationLc1290Part4, Seg30.relationLc1290Part5, Seg30.relationLc1290Part6, Seg30.relationLc1290Part7]
  rw [seg30AccX227_sum]
  ring

theorem seg30_lc1291 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1291 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY227 rho + rho 29942 := by
  simp only [Seg30.relationLc1291, Seg30.relationLc1291Part0, Seg30.relationLc1291Part1, Seg30.relationLc1291Part2, Seg30.relationLc1291Part3, Seg30.relationLc1291Part4, Seg30.relationLc1291Part5, Seg30.relationLc1291Part6, Seg30.relationLc1291Part7]
  rw [seg30AccY227_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
