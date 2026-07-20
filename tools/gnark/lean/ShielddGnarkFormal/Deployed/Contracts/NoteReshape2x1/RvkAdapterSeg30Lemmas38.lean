import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1005 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1005 rho = seg30AccX187 rho + seg30AccY187 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc1005, Seg30.relationLc1005Part0, Seg30.relationLc1005Part1, Seg30.relationLc1005Part2, Seg30.relationLc1005Part3, Seg30.relationLc1005Part4, Seg30.relationLc1005Part5, Seg30.relationLc1005Part6, Seg30.relationLc1005Part7, Seg30.relationLc1005Part8, Seg30.relationLc1005Part9, Seg30.relationLc1005Part10, Seg30.relationLc1005Part11]
  rw [seg30AccX187_sum, seg30AccY187_sum]
  ring

theorem seg30_lc1006 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1006 rho = 2403012574858696745482066140964944036067063523433809935314039110083170318844*seg30AccX187 rho + 6761860238425733736602735132976919915057165826325913517006558957367091794377*rho 28311 := by
  simp only [Seg30.relationLc1006, Seg30.relationLc1006Part0, Seg30.relationLc1006Part1, Seg30.relationLc1006Part2, Seg30.relationLc1006Part3, Seg30.relationLc1006Part4, Seg30.relationLc1006Part5]
  rw [seg30AccX187_sum]
  ring

theorem seg30_lc1007 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1007 rho = 4878403618494980795709618157396838432865605045666462691090029268331387566044*seg30AccY187 rho + 4878403618494980795709618157396838432865605045666462691090029268331387566044 + 3277525489688013143718635685382580406258724390402438479123432780115380251654*rho 28311 := by
  simp only [Seg30.relationLc1007, Seg30.relationLc1007Part0, Seg30.relationLc1007Part1, Seg30.relationLc1007Part2, Seg30.relationLc1007Part3, Seg30.relationLc1007Part4, Seg30.relationLc1007Part5]
  rw [seg30AccY187_sum]
  ring

theorem seg30_lc1008 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1008 rho = 6253778201273129207477690650180498025396873179828889305867736272756480515741*seg30AccX187 rho + 4878403618494980795709618157396838432865605045666462691090029268331387566044*seg30AccY187 rho + 4878403618494980795709618157396838432865605045666462691090029268331387566044 + 1689264359205948583089380917082771383935708979652244369696706107669289961942*rho 28311 := by
  simp only [Seg30.relationLc1008, Seg30.relationLc1008Part0, Seg30.relationLc1008Part1, Seg30.relationLc1008Part2, Seg30.relationLc1008Part3, Seg30.relationLc1008Part4, Seg30.relationLc1008Part5, Seg30.relationLc1008Part6, Seg30.relationLc1008Part7, Seg30.relationLc1008Part8, Seg30.relationLc1008Part9, Seg30.relationLc1008Part10, Seg30.relationLc1008Part11]
  rw [seg30AccX187_sum, seg30AccY187_sum]
  ring

theorem seg30_lc1009 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1009 rho = 2190683548155241216771134288601048505979026155325174522067497183160928723300*seg30AccX187 rho + 3566058130933389628539206781384708098510294289487601136845204187586021672997*seg30AccY187 rho + 3566058130933389628539206781384708098510294289487601136845204187586021672997 + 6755197390222421841159444021698775147440190355501819458238527348248119277099*rho 28311 := by
  simp only [Seg30.relationLc1009, Seg30.relationLc1009Part0, Seg30.relationLc1009Part1, Seg30.relationLc1009Part2, Seg30.relationLc1009Part3, Seg30.relationLc1009Part4, Seg30.relationLc1009Part5, Seg30.relationLc1009Part6, Seg30.relationLc1009Part7, Seg30.relationLc1009Part8, Seg30.relationLc1009Part9, Seg30.relationLc1009Part10, Seg30.relationLc1009Part11]
  rw [seg30AccX187_sum, seg30AccY187_sum]
  ring

theorem seg30_lc1010 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1010 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX187 rho + rho 29614 := by
  simp only [Seg30.relationLc1010, Seg30.relationLc1010Part0, Seg30.relationLc1010Part1, Seg30.relationLc1010Part2, Seg30.relationLc1010Part3, Seg30.relationLc1010Part4, Seg30.relationLc1010Part5]
  rw [seg30AccX187_sum]
  ring

theorem seg30_lc1011 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1011 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY187 rho + rho 29616 := by
  simp only [Seg30.relationLc1011, Seg30.relationLc1011Part0, Seg30.relationLc1011Part1, Seg30.relationLc1011Part2, Seg30.relationLc1011Part3, Seg30.relationLc1011Part4, Seg30.relationLc1011Part5]
  rw [seg30AccY187_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
