import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1341 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1341 rho = seg30AccX235 rho + seg30AccY235 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1341, Seg30.relationLc1341Part0, Seg30.relationLc1341Part1, Seg30.relationLc1341Part2, Seg30.relationLc1341Part3, Seg30.relationLc1341Part4, Seg30.relationLc1341Part5, Seg30.relationLc1341Part6, Seg30.relationLc1341Part7, Seg30.relationLc1341Part8, Seg30.relationLc1341Part9, Seg30.relationLc1341Part10, Seg30.relationLc1341Part11, Seg30.relationLc1341Part12, Seg30.relationLc1341Part13, Seg30.relationLc1341Part14]
  rw [seg30AccX235_sum, seg30AccY235_sum]
  ring

theorem seg30_lc1342 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1342 rho = 8091864853146751529371715125668286512450304465019627868544043469098480805528*seg30AccX235 rho + 5183033282837840927610938169579538547541169724730244457330125573237530254282*rho 28317 := by
  simp only [Seg30.relationLc1342, Seg30.relationLc1342Part0, Seg30.relationLc1342Part1, Seg30.relationLc1342Part2, Seg30.relationLc1342Part3, Seg30.relationLc1342Part4, Seg30.relationLc1342Part5, Seg30.relationLc1342Part6, Seg30.relationLc1342Part7]
  rw [seg30AccX235_sum]
  ring

theorem seg30_lc1343 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1343 rho = 1227669925703988626892556534377943857920740743066421402305718522958062673379*seg30AccY235 rho + 1227669925703988626892556534377943857920740743066421402305718522958062673379 + 2046459351451249908923190100053112941830275410540864722482341418481537589236*rho 28317 := by
  simp only [Seg30.relationLc1343, Seg30.relationLc1343Part0, Seg30.relationLc1343Part1, Seg30.relationLc1343Part2, Seg30.relationLc1343Part3, Seg30.relationLc1343Part4, Seg30.relationLc1343Part5, Seg30.relationLc1343Part6, Seg30.relationLc1343Part7]
  rw [seg30AccY235_sum]
  ring

theorem seg30_lc1344 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1344 rho = 5830782725061668019228127015056336578759086533684621883188846672974808587953*seg30AccX235 rho + 1227669925703988626892556534377943857920740743066421402305718522958062673379*seg30AccY235 rho + 1227669925703988626892556534377943857920740743066421402305718522958062673379 + 7937774789825435385526925645959203004775181424739587903520695280511070458125*rho 28317 := by
  simp only [Seg30.relationLc1344, Seg30.relationLc1344Part0, Seg30.relationLc1344Part1, Seg30.relationLc1344Part2, Seg30.relationLc1344Part3, Seg30.relationLc1344Part4, Seg30.relationLc1344Part5, Seg30.relationLc1344Part6, Seg30.relationLc1344Part7, Seg30.relationLc1344Part8, Seg30.relationLc1344Part9, Seg30.relationLc1344Part10, Seg30.relationLc1344Part11, Seg30.relationLc1344Part12, Seg30.relationLc1344Part13, Seg30.relationLc1344Part14]
  rw [seg30AccX235_sum, seg30AccY235_sum]
  ring

theorem seg30_lc1345 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1345 rho = 2613679024366702405020697923725209952616812801469441944746386782942600651088*seg30AccX235 rho + 7216791823724381797356268404403602673455158592087642425629514932959346565662*seg30AccY235 rho + 7216791823724381797356268404403602673455158592087642425629514932959346565662 + 506686959602935038721899292822343526600717910414475924414538175406338780916*rho 28317 := by
  simp only [Seg30.relationLc1345, Seg30.relationLc1345Part0, Seg30.relationLc1345Part1, Seg30.relationLc1345Part2, Seg30.relationLc1345Part3, Seg30.relationLc1345Part4, Seg30.relationLc1345Part5, Seg30.relationLc1345Part6, Seg30.relationLc1345Part7, Seg30.relationLc1345Part8, Seg30.relationLc1345Part9, Seg30.relationLc1345Part10, Seg30.relationLc1345Part11, Seg30.relationLc1345Part12, Seg30.relationLc1345Part13, Seg30.relationLc1345Part14]
  rw [seg30AccX235_sum, seg30AccY235_sum]
  ring

theorem seg30_lc1346 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1346 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX235 rho + rho 30004 := by
  simp only [Seg30.relationLc1346, Seg30.relationLc1346Part0, Seg30.relationLc1346Part1, Seg30.relationLc1346Part2, Seg30.relationLc1346Part3, Seg30.relationLc1346Part4, Seg30.relationLc1346Part5, Seg30.relationLc1346Part6, Seg30.relationLc1346Part7]
  rw [seg30AccX235_sum]
  ring

theorem seg30_lc1347 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1347 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY235 rho + rho 30006 := by
  simp only [Seg30.relationLc1347, Seg30.relationLc1347Part0, Seg30.relationLc1347Part1, Seg30.relationLc1347Part2, Seg30.relationLc1347Part3, Seg30.relationLc1347Part4, Seg30.relationLc1347Part5, Seg30.relationLc1347Part6, Seg30.relationLc1347Part7]
  rw [seg30AccY235_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
