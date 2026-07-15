import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1327 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1327 rho = seg30AccX233 rho + seg30AccY233 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1327, Seg30.relationLc1327Part0, Seg30.relationLc1327Part1, Seg30.relationLc1327Part2, Seg30.relationLc1327Part3, Seg30.relationLc1327Part4, Seg30.relationLc1327Part5, Seg30.relationLc1327Part6, Seg30.relationLc1327Part7, Seg30.relationLc1327Part8, Seg30.relationLc1327Part9, Seg30.relationLc1327Part10, Seg30.relationLc1327Part11, Seg30.relationLc1327Part12, Seg30.relationLc1327Part13, Seg30.relationLc1327Part14]
  rw [seg30AccX233_sum, seg30AccY233_sum]
  ring

theorem seg30_lc1328 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1328 rho = 5087188169684227801562250753370009099099816197018021756764974898315399945223*seg30AccX233 rho + 7152477452365709395280634271259004537953723793054248778598096973805561633905*rho 28317 := by
  simp only [Seg30.relationLc1328, Seg30.relationLc1328Part0, Seg30.relationLc1328Part1, Seg30.relationLc1328Part2, Seg30.relationLc1328Part3, Seg30.relationLc1328Part4, Seg30.relationLc1328Part5, Seg30.relationLc1328Part6, Seg30.relationLc1328Part7]
  rw [seg30AccX233_sum]
  ring

theorem seg30_lc1329 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1329 rho = 6492092171468074665040082486270868720785634859603612924010367110189092078530*seg30AccY233 rho + 6492092171468074665040082486270868720785634859603612924010367110189092078530 + 3623911247177762772873015558312128719028580682713025867927504034680464909656*rho 28317 := by
  simp only [Seg30.relationLc1329, Seg30.relationLc1329Part0, Seg30.relationLc1329Part1, Seg30.relationLc1329Part2, Seg30.relationLc1329Part3, Seg30.relationLc1329Part4, Seg30.relationLc1329Part5, Seg30.relationLc1329Part6, Seg30.relationLc1329Part7]
  rw [seg30AccY233_sum]
  ring

theorem seg30_lc1330 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1330 rho = 1049904119233804414728524198211337291746131104561334643241468891382768574838*seg30AccX233 rho + 6492092171468074665040082486270868720785634859603612924010367110189092078530*seg30AccY233 rho + 6492092171468074665040082486270868720785634859603612924010367110189092078530 + 8316714720528696662738890725987300544313821599026025984463061742725224348499*rho 28317 := by
  simp only [Seg30.relationLc1330, Seg30.relationLc1330Part0, Seg30.relationLc1330Part1, Seg30.relationLc1330Part2, Seg30.relationLc1330Part3, Seg30.relationLc1330Part4, Seg30.relationLc1330Part5, Seg30.relationLc1330Part6, Seg30.relationLc1330Part7, Seg30.relationLc1330Part8, Seg30.relationLc1330Part9, Seg30.relationLc1330Part10, Seg30.relationLc1330Part11, Seg30.relationLc1330Part12, Seg30.relationLc1330Part13, Seg30.relationLc1330Part14]
  rw [seg30AccX233_sum, seg30AccY233_sum]
  ring

theorem seg30_lc1331 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1331 rho = 7394557630194566009520300740570209239629768230592729184693764564534640664203*seg30AccX233 rho + 1952369577960295759208742452510677810590264475550450903924866345728317160511*seg30AccY233 rho + 1952369577960295759208742452510677810590264475550450903924866345728317160511 + 127747028899673761509934212794245987062077736128037843472171713192184890542*rho 28317 := by
  simp only [Seg30.relationLc1331, Seg30.relationLc1331Part0, Seg30.relationLc1331Part1, Seg30.relationLc1331Part2, Seg30.relationLc1331Part3, Seg30.relationLc1331Part4, Seg30.relationLc1331Part5, Seg30.relationLc1331Part6, Seg30.relationLc1331Part7, Seg30.relationLc1331Part8, Seg30.relationLc1331Part9, Seg30.relationLc1331Part10, Seg30.relationLc1331Part11, Seg30.relationLc1331Part12, Seg30.relationLc1331Part13, Seg30.relationLc1331Part14]
  rw [seg30AccX233_sum, seg30AccY233_sum]
  ring

theorem seg30_lc1332 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1332 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX233 rho + rho 29988 := by
  simp only [Seg30.relationLc1332, Seg30.relationLc1332Part0, Seg30.relationLc1332Part1, Seg30.relationLc1332Part2, Seg30.relationLc1332Part3, Seg30.relationLc1332Part4, Seg30.relationLc1332Part5, Seg30.relationLc1332Part6, Seg30.relationLc1332Part7]
  rw [seg30AccX233_sum]
  ring

theorem seg30_lc1333 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1333 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY233 rho + rho 29990 := by
  simp only [Seg30.relationLc1333, Seg30.relationLc1333Part0, Seg30.relationLc1333Part1, Seg30.relationLc1333Part2, Seg30.relationLc1333Part3, Seg30.relationLc1333Part4, Seg30.relationLc1333Part5, Seg30.relationLc1333Part6, Seg30.relationLc1333Part7]
  rw [seg30AccY233_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
