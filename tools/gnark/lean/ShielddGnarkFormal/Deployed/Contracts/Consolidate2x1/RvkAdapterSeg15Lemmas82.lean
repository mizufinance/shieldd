import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc1313 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1313 rho = seg15AccX231 rho + seg15AccY231 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1313, Seg15.relationLc1313Part0, Seg15.relationLc1313Part1, Seg15.relationLc1313Part2, Seg15.relationLc1313Part3, Seg15.relationLc1313Part4, Seg15.relationLc1313Part5, Seg15.relationLc1313Part6, Seg15.relationLc1313Part7, Seg15.relationLc1313Part8, Seg15.relationLc1313Part9, Seg15.relationLc1313Part10, Seg15.relationLc1313Part11, Seg15.relationLc1313Part12, Seg15.relationLc1313Part13, Seg15.relationLc1313Part14]
  rw [seg15AccX231_sum, seg15AccY231_sum]
  ring

theorem seg15_lc1314 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1314 rho = 1440741398750420175197138347651241738572644196148875266729604368789903737219*seg15AccX231 rho + 5933933965763915668833977120004965383452459708156491994369560357579044038721*rho 16136 := by
  simp only [Seg15.relationLc1314, Seg15.relationLc1314Part0, Seg15.relationLc1314Part1, Seg15.relationLc1314Part2, Seg15.relationLc1314Part3, Seg15.relationLc1314Part4, Seg15.relationLc1314Part5, Seg15.relationLc1314Part6, Seg15.relationLc1314Part7]
  rw [seg15AccX231_sum]
  ring

theorem seg15_lc1315 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1315 rho = 7460699961452232489258671600060964629412502616641694919143176647000166491204*seg15AccY231 rho + 7460699961452232489258671600060964629412502616641694919143176647000166491204 + 3040474903843643105099811186409463933730707835118493079665929304632651374772*rho 16136 := by
  simp only [Seg15.relationLc1315, Seg15.relationLc1315Part0, Seg15.relationLc1315Part1, Seg15.relationLc1315Part2, Seg15.relationLc1315Part3, Seg15.relationLc1315Part4, Seg15.relationLc1315Part5, Seg15.relationLc1315Part6, Seg15.relationLc1315Part7]
  rw [seg15AccY231_sum]
  ring

theorem seg15_lc1316 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1316 rho = 8145846500904674556913695137357523281750395003917607040671962891397590343033*seg15AccX231 rho + 7460699961452232489258671600060964629412502616641694919143176647000166491204*seg15AccY231 rho + 7460699961452232489258671600060964629412502616641694919143176647000166491204 + 4322665375609269576458565174851024104784535824264046778834650417895727334891*rho 16136 := by
  simp only [Seg15.relationLc1316, Seg15.relationLc1316Part0, Seg15.relationLc1316Part1, Seg15.relationLc1316Part2, Seg15.relationLc1316Part3, Seg15.relationLc1316Part4, Seg15.relationLc1316Part5, Seg15.relationLc1316Part6, Seg15.relationLc1316Part7, Seg15.relationLc1316Part8, Seg15.relationLc1316Part9, Seg15.relationLc1316Part10, Seg15.relationLc1316Part11, Seg15.relationLc1316Part12, Seg15.relationLc1316Part13, Seg15.relationLc1316Part14]
  rw [seg15AccX231_sum, seg15AccY231_sum]
  ring

theorem seg15_lc1317 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1317 rho = 298615248523695867335129801424023249625504331236456787263270564519818896008*seg15AccX231 rho + 983761787976137934990153338720581901963396718512368908792056808917242747837*seg15AccY231 rho + 983761787976137934990153338720581901963396718512368908792056808917242747837 + 4121796373819100847790259763930522426591363510890017049100583038021681904150*rho 16136 := by
  simp only [Seg15.relationLc1317, Seg15.relationLc1317Part0, Seg15.relationLc1317Part1, Seg15.relationLc1317Part2, Seg15.relationLc1317Part3, Seg15.relationLc1317Part4, Seg15.relationLc1317Part5, Seg15.relationLc1317Part6, Seg15.relationLc1317Part7, Seg15.relationLc1317Part8, Seg15.relationLc1317Part9, Seg15.relationLc1317Part10, Seg15.relationLc1317Part11, Seg15.relationLc1317Part12, Seg15.relationLc1317Part13, Seg15.relationLc1317Part14]
  rw [seg15AccX231_sum, seg15AccY231_sum]
  ring

theorem seg15_lc1318 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1318 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX231 rho + rho 17791 := by
  simp only [Seg15.relationLc1318, Seg15.relationLc1318Part0, Seg15.relationLc1318Part1, Seg15.relationLc1318Part2, Seg15.relationLc1318Part3, Seg15.relationLc1318Part4, Seg15.relationLc1318Part5, Seg15.relationLc1318Part6, Seg15.relationLc1318Part7]
  rw [seg15AccX231_sum]
  ring

theorem seg15_lc1319 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1319 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY231 rho + rho 17793 := by
  simp only [Seg15.relationLc1319, Seg15.relationLc1319Part0, Seg15.relationLc1319Part1, Seg15.relationLc1319Part2, Seg15.relationLc1319Part3, Seg15.relationLc1319Part4, Seg15.relationLc1319Part5, Seg15.relationLc1319Part6, Seg15.relationLc1319Part7]
  rw [seg15AccY231_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
