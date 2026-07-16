import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1320 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1320 rho = seg30AccX232 rho + seg30AccY232 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1320, Seg30.relationLc1320Part0, Seg30.relationLc1320Part1, Seg30.relationLc1320Part2, Seg30.relationLc1320Part3, Seg30.relationLc1320Part4, Seg30.relationLc1320Part5, Seg30.relationLc1320Part6, Seg30.relationLc1320Part7, Seg30.relationLc1320Part8, Seg30.relationLc1320Part9, Seg30.relationLc1320Part10, Seg30.relationLc1320Part11, Seg30.relationLc1320Part12, Seg30.relationLc1320Part13, Seg30.relationLc1320Part14]
  rw [seg30AccX232_sum, seg30AccY232_sum]
  ring

theorem seg30_lc1321 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1321 rho = 3222337823151825026837966724671427176770153243677937432187190383381467283493*seg30AccX232 rho + 3202800750990824004731067945534977160523087748504363744810507262593949216434*rho 28317 := by
  simp only [Seg30.relationLc1321, Seg30.relationLc1321Part0, Seg30.relationLc1321Part1, Seg30.relationLc1321Part2, Seg30.relationLc1321Part3, Seg30.relationLc1321Part4, Seg30.relationLc1321Part5, Seg30.relationLc1321Part6, Seg30.relationLc1321Part7]
  rw [seg30AccX232_sum]
  ring

theorem seg30_lc1322 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1322 rho = 311399174984249285727356043299846010815117751051619267223118429205494289868*seg30AccY232 rho + 311399174984249285727356043299846010815117751051619267223118429205494289868 + 7016040529850333745453736546212323347249913967845743269665879261850771674172*rho 28317 := by
  simp only [Seg30.relationLc1322, Seg30.relationLc1322Part0, Seg30.relationLc1322Part1, Seg30.relationLc1322Part2, Seg30.relationLc1322Part3, Seg30.relationLc1322Part4, Seg30.relationLc1322Part5, Seg30.relationLc1322Part6, Seg30.relationLc1322Part7]
  rw [seg30AccY232_sum]
  ring

theorem seg30_lc1323 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1323 rho = 9452407504613351969408951188684563644785783266845458098640480222156138696*seg30AccX232 rho + 311399174984249285727356043299846010815117751051619267223118429205494289868*seg30AccY232 rho + 311399174984249285727356043299846010815117751051619267223118429205494289868 + 713803375196250831625080747136900490218424423647163472165336085475014016171*rho 28317 := by
  simp only [Seg30.relationLc1323, Seg30.relationLc1323Part0, Seg30.relationLc1323Part1, Seg30.relationLc1323Part2, Seg30.relationLc1323Part3, Seg30.relationLc1323Part4, Seg30.relationLc1323Part5, Seg30.relationLc1323Part6, Seg30.relationLc1323Part7, Seg30.relationLc1323Part8, Seg30.relationLc1323Part9, Seg30.relationLc1323Part10, Seg30.relationLc1323Part11, Seg30.relationLc1323Part12, Seg30.relationLc1323Part13, Seg30.relationLc1323Part14]
  rw [seg30AccX232_sum, seg30AccY232_sum]
  ring

theorem seg30_lc1324 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1324 rho = 8435009341923757072279415987592861967731113551887218369836592975695253100345*seg30AccX232 rho + 8133062574444121138521468895481700520560781584102444560712115026711914949173*seg30AccY232 rho + 8133062574444121138521468895481700520560781584102444560712115026711914949173 + 7730658374232119592623744191644646041157474911506900355769897370442395222870*rho 28317 := by
  simp only [Seg30.relationLc1324, Seg30.relationLc1324Part0, Seg30.relationLc1324Part1, Seg30.relationLc1324Part2, Seg30.relationLc1324Part3, Seg30.relationLc1324Part4, Seg30.relationLc1324Part5, Seg30.relationLc1324Part6, Seg30.relationLc1324Part7, Seg30.relationLc1324Part8, Seg30.relationLc1324Part9, Seg30.relationLc1324Part10, Seg30.relationLc1324Part11, Seg30.relationLc1324Part12, Seg30.relationLc1324Part13, Seg30.relationLc1324Part14]
  rw [seg30AccX232_sum, seg30AccY232_sum]
  ring

theorem seg30_lc1325 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1325 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX232 rho + rho 29980 := by
  simp only [Seg30.relationLc1325, Seg30.relationLc1325Part0, Seg30.relationLc1325Part1, Seg30.relationLc1325Part2, Seg30.relationLc1325Part3, Seg30.relationLc1325Part4, Seg30.relationLc1325Part5, Seg30.relationLc1325Part6, Seg30.relationLc1325Part7]
  rw [seg30AccX232_sum]
  ring

theorem seg30_lc1326 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1326 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY232 rho + rho 29982 := by
  simp only [Seg30.relationLc1326, Seg30.relationLc1326Part0, Seg30.relationLc1326Part1, Seg30.relationLc1326Part2, Seg30.relationLc1326Part3, Seg30.relationLc1326Part4, Seg30.relationLc1326Part5, Seg30.relationLc1326Part6, Seg30.relationLc1326Part7]
  rw [seg30AccY232_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
