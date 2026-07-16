import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1362 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1362 rho = seg30AccX238 rho + seg30AccY238 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1362, Seg30.relationLc1362Part0, Seg30.relationLc1362Part1, Seg30.relationLc1362Part2, Seg30.relationLc1362Part3, Seg30.relationLc1362Part4, Seg30.relationLc1362Part5, Seg30.relationLc1362Part6, Seg30.relationLc1362Part7, Seg30.relationLc1362Part8, Seg30.relationLc1362Part9, Seg30.relationLc1362Part10, Seg30.relationLc1362Part11, Seg30.relationLc1362Part12, Seg30.relationLc1362Part13, Seg30.relationLc1362Part14]
  rw [seg30AccX238_sum, seg30AccY238_sum]
  ring

theorem seg30_lc1363 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1363 rho = 2419781321145861764726265215228723255126294865025301069516030121558411920042*seg30AccX238 rho + 859882192148861689382806839411705393065304362639521984048112477304077950933*rho 28317 := by
  simp only [Seg30.relationLc1363, Seg30.relationLc1363Part0, Seg30.relationLc1363Part1, Seg30.relationLc1363Part2, Seg30.relationLc1363Part3, Seg30.relationLc1363Part4, Seg30.relationLc1363Part5, Seg30.relationLc1363Part6, Seg30.relationLc1363Part7]
  rw [seg30AccX238_sum]
  ring

theorem seg30_lc1364 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1364 rho = 629217992256084577122866111698153496803649394247312880233898704412863053304*seg30AccY238 rho + 629217992256084577122866111698153496803649394247312880233898704412863053304 + 225853431996158285045358681658574726861631960515721974037992608483180946748*rho 28317 := by
  simp only [Seg30.relationLc1364, Seg30.relationLc1364Part0, Seg30.relationLc1364Part1, Seg30.relationLc1364Part2, Seg30.relationLc1364Part3, Seg30.relationLc1364Part4, Seg30.relationLc1364Part5, Seg30.relationLc1364Part6, Seg30.relationLc1364Part7]
  rw [seg30AccY238_sum]
  ring

theorem seg30_lc1365 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1365 rho = 6661890807748742993296814331126002683721911423547553592532001772781444762845*seg30AccX238 rho + 629217992256084577122866111698153496803649394247312880233898704412863053304*seg30AccY238 rho + 629217992256084577122866111698153496803649394247312880233898704412863053304 + 3091273218608613944278866913730900744754171557634409476725070531287765040746*rho 28317 := by
  simp only [Seg30.relationLc1365, Seg30.relationLc1365Part0, Seg30.relationLc1365Part1, Seg30.relationLc1365Part2, Seg30.relationLc1365Part3, Seg30.relationLc1365Part4, Seg30.relationLc1365Part5, Seg30.relationLc1365Part6, Seg30.relationLc1365Part7, Seg30.relationLc1365Part8, Seg30.relationLc1365Part9, Seg30.relationLc1365Part10, Seg30.relationLc1365Part11, Seg30.relationLc1365Part12, Seg30.relationLc1365Part13, Seg30.relationLc1365Part14]
  rw [seg30AccX238_sum, seg30AccY238_sum]
  ring

theorem seg30_lc1366 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1366 rho = 1782570941679627430952010607655543847653987911606510235403231683135964476196*seg30AccX238 rho + 7815243757172285847125958827083393034572249940906750947701334751504546185737*seg30AccY238 rho + 7815243757172285847125958827083393034572249940906750947701334751504546185737 + 5353188530819756479969958025050645786621727777519654351210162924629644198295*rho 28317 := by
  simp only [Seg30.relationLc1366, Seg30.relationLc1366Part0, Seg30.relationLc1366Part1, Seg30.relationLc1366Part2, Seg30.relationLc1366Part3, Seg30.relationLc1366Part4, Seg30.relationLc1366Part5, Seg30.relationLc1366Part6, Seg30.relationLc1366Part7, Seg30.relationLc1366Part8, Seg30.relationLc1366Part9, Seg30.relationLc1366Part10, Seg30.relationLc1366Part11, Seg30.relationLc1366Part12, Seg30.relationLc1366Part13, Seg30.relationLc1366Part14]
  rw [seg30AccX238_sum, seg30AccY238_sum]
  ring

theorem seg30_lc1367 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1367 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX238 rho + rho 30028 := by
  simp only [Seg30.relationLc1367, Seg30.relationLc1367Part0, Seg30.relationLc1367Part1, Seg30.relationLc1367Part2, Seg30.relationLc1367Part3, Seg30.relationLc1367Part4, Seg30.relationLc1367Part5, Seg30.relationLc1367Part6, Seg30.relationLc1367Part7]
  rw [seg30AccX238_sum]
  ring

theorem seg30_lc1368 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1368 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY238 rho + rho 30030 := by
  simp only [Seg30.relationLc1368, Seg30.relationLc1368Part0, Seg30.relationLc1368Part1, Seg30.relationLc1368Part2, Seg30.relationLc1368Part3, Seg30.relationLc1368Part4, Seg30.relationLc1368Part5, Seg30.relationLc1368Part6, Seg30.relationLc1368Part7]
  rw [seg30AccY238_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
