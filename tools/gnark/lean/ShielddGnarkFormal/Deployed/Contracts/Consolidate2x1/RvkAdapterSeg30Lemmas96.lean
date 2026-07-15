import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1411 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1411 rho = seg30AccX245 rho + seg30AccY245 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1411, Seg30.relationLc1411Part0, Seg30.relationLc1411Part1, Seg30.relationLc1411Part2, Seg30.relationLc1411Part3, Seg30.relationLc1411Part4, Seg30.relationLc1411Part5, Seg30.relationLc1411Part6, Seg30.relationLc1411Part7, Seg30.relationLc1411Part8, Seg30.relationLc1411Part9, Seg30.relationLc1411Part10, Seg30.relationLc1411Part11, Seg30.relationLc1411Part12, Seg30.relationLc1411Part13, Seg30.relationLc1411Part14, Seg30.relationLc1411Part15]
  rw [seg30AccX245_sum, seg30AccY245_sum]
  ring

theorem seg30_lc1412 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1412 rho = 2402040019472498774072941026249248018522448093911505580831537318715564696295*seg30AccX245 rho + 8236537065884324882781831579993557186896034708215621005562235095096824994222*rho 28317 := by
  simp only [Seg30.relationLc1412, Seg30.relationLc1412Part0, Seg30.relationLc1412Part1, Seg30.relationLc1412Part2, Seg30.relationLc1412Part3, Seg30.relationLc1412Part4, Seg30.relationLc1412Part5, Seg30.relationLc1412Part6, Seg30.relationLc1412Part7]
  rw [seg30AccX245_sum]
  ring

theorem seg30_lc1413 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1413 rho = 480450082750963304168017552783809360075956388215352509798867393431937691687*seg30AccY245 rho + 480450082750963304168017552783809360075956388215352509798867393431937691687 + 7349929413156500839574466363920844519270761866542770606800341658173170220065*rho 28317 := by
  simp only [Seg30.relationLc1413, Seg30.relationLc1413Part0, Seg30.relationLc1413Part1, Seg30.relationLc1413Part2, Seg30.relationLc1413Part3, Seg30.relationLc1413Part4, Seg30.relationLc1413Part5, Seg30.relationLc1413Part6, Seg30.relationLc1413Part7]
  rw [seg30AccY245_sum]
  ring

theorem seg30_lc1414 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1414 rho = 8411713817957444258635811711956280291601656255403008793061221120878583238984*seg30AccX245 rho + 480450082750963304168017552783809360075956388215352509798867393431937691687*seg30AccY245 rho + 480450082750963304168017552783809360075956388215352509798867393431937691687 + 7358246348133243992746025278670118484927712489971609980736598759135411743889*rho 28317 := by
  simp only [Seg30.relationLc1414, Seg30.relationLc1414Part0, Seg30.relationLc1414Part1, Seg30.relationLc1414Part2, Seg30.relationLc1414Part3, Seg30.relationLc1414Part4, Seg30.relationLc1414Part5, Seg30.relationLc1414Part6, Seg30.relationLc1414Part7, Seg30.relationLc1414Part8, Seg30.relationLc1414Part9, Seg30.relationLc1414Part10, Seg30.relationLc1414Part11, Seg30.relationLc1414Part12, Seg30.relationLc1414Part13, Seg30.relationLc1414Part14, Seg30.relationLc1414Part15]
  rw [seg30AccX245_sum, seg30AccY245_sum]
  ring

theorem seg30_lc1415 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1415 rho = 32747931470926165613013226825266239774243079751055034874012335038826000057*seg30AccX245 rho + 7964011666677407120080807385997737171299942946938711318136366062485471547354*seg30AccY245 rho + 7964011666677407120080807385997737171299942946938711318136366062485471547354 + 1086215401295126431502799660111428046448186845182453847198634696781997495152*rho 28317 := by
  simp only [Seg30.relationLc1415, Seg30.relationLc1415Part0, Seg30.relationLc1415Part1, Seg30.relationLc1415Part2, Seg30.relationLc1415Part3, Seg30.relationLc1415Part4, Seg30.relationLc1415Part5, Seg30.relationLc1415Part6, Seg30.relationLc1415Part7, Seg30.relationLc1415Part8, Seg30.relationLc1415Part9, Seg30.relationLc1415Part10, Seg30.relationLc1415Part11, Seg30.relationLc1415Part12, Seg30.relationLc1415Part13, Seg30.relationLc1415Part14, Seg30.relationLc1415Part15]
  rw [seg30AccX245_sum, seg30AccY245_sum]
  ring

theorem seg30_lc1416 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1416 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX245 rho + rho 30084 := by
  simp only [Seg30.relationLc1416, Seg30.relationLc1416Part0, Seg30.relationLc1416Part1, Seg30.relationLc1416Part2, Seg30.relationLc1416Part3, Seg30.relationLc1416Part4, Seg30.relationLc1416Part5, Seg30.relationLc1416Part6, Seg30.relationLc1416Part7]
  rw [seg30AccX245_sum]
  ring

theorem seg30_lc1417 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1417 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY245 rho + rho 30086 := by
  simp only [Seg30.relationLc1417, Seg30.relationLc1417Part0, Seg30.relationLc1417Part1, Seg30.relationLc1417Part2, Seg30.relationLc1417Part3, Seg30.relationLc1417Part4, Seg30.relationLc1417Part5, Seg30.relationLc1417Part6, Seg30.relationLc1417Part7]
  rw [seg30AccY245_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
