import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc1264 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1264 rho = seg15AccX224 rho + seg15AccY224 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1264, Seg15.relationLc1264Part0, Seg15.relationLc1264Part1, Seg15.relationLc1264Part2, Seg15.relationLc1264Part3, Seg15.relationLc1264Part4, Seg15.relationLc1264Part5, Seg15.relationLc1264Part6, Seg15.relationLc1264Part7, Seg15.relationLc1264Part8, Seg15.relationLc1264Part9, Seg15.relationLc1264Part10, Seg15.relationLc1264Part11, Seg15.relationLc1264Part12, Seg15.relationLc1264Part13, Seg15.relationLc1264Part14]
  rw [seg15AccX224_sum, seg15AccY224_sum]
  ring

theorem seg15_lc1265 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1265 rho = 4646807500992826888153210383261166334613760351744050686719083718939098348084*seg15AccX224 rho + 5655851257221613673432360408661590662640487308967499114876056615059719009869*rho 16136 := by
  simp only [Seg15.relationLc1265, Seg15.relationLc1265Part0, Seg15.relationLc1265Part1, Seg15.relationLc1265Part2, Seg15.relationLc1265Part3, Seg15.relationLc1265Part4, Seg15.relationLc1265Part5, Seg15.relationLc1265Part6, Seg15.relationLc1265Part7]
  rw [seg15AccX224_sum]
  ring

theorem seg15_lc1266 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1266 rho = 1622593000433510709761396177601639448844449538627720169095349271552626081854*seg15AccY224 rho + 1622593000433510709761396177601639448844449538627720169095349271552626081854 + 2996902736460755794649865793395753181717427225185005573185734567768188894816*rho 16136 := by
  simp only [Seg15.relationLc1266, Seg15.relationLc1266Part0, Seg15.relationLc1266Part1, Seg15.relationLc1266Part2, Seg15.relationLc1266Part3, Seg15.relationLc1266Part4, Seg15.relationLc1266Part5, Seg15.relationLc1266Part6, Seg15.relationLc1266Part7]
  rw [seg15AccY224_sum]
  ring

theorem seg15_lc1267 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1267 rho = 2953326188314250908604737618582116618162053445307658210190773125841682639780*seg15AccX224 rho + 1622593000433510709761396177601639448844449538627720169095349271552626081854*seg15AccY224 rho + 1622593000433510709761396177601639448844449538627720169095349271552626081854 + 5061672224158656816420493123825889868515856287301081906893473179844358288203*rho 16136 := by
  simp only [Seg15.relationLc1267, Seg15.relationLc1267Part0, Seg15.relationLc1267Part1, Seg15.relationLc1267Part2, Seg15.relationLc1267Part3, Seg15.relationLc1267Part4, Seg15.relationLc1267Part5, Seg15.relationLc1267Part6, Seg15.relationLc1267Part7, Seg15.relationLc1267Part8, Seg15.relationLc1267Part9, Seg15.relationLc1267Part10, Seg15.relationLc1267Part11, Seg15.relationLc1267Part12, Seg15.relationLc1267Part13, Seg15.relationLc1267Part14]
  rw [seg15AccX224_sum, seg15AccY224_sum]
  ring

theorem seg15_lc1268 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1268 rho = 5491135561114119515644087320199429913213845889846405617744460330075726599261*seg15AccX224 rho + 6821868748994859714487428761179907082531449796526343658839884184364783157187*seg15AccY224 rho + 6821868748994859714487428761179907082531449796526343658839884184364783157187 + 3382789525269713607828331814955656662860043047852981921041760276073050950838*rho 16136 := by
  simp only [Seg15.relationLc1268, Seg15.relationLc1268Part0, Seg15.relationLc1268Part1, Seg15.relationLc1268Part2, Seg15.relationLc1268Part3, Seg15.relationLc1268Part4, Seg15.relationLc1268Part5, Seg15.relationLc1268Part6, Seg15.relationLc1268Part7, Seg15.relationLc1268Part8, Seg15.relationLc1268Part9, Seg15.relationLc1268Part10, Seg15.relationLc1268Part11, Seg15.relationLc1268Part12, Seg15.relationLc1268Part13, Seg15.relationLc1268Part14]
  rw [seg15AccX224_sum, seg15AccY224_sum]
  ring

theorem seg15_lc1269 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1269 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX224 rho + rho 17735 := by
  simp only [Seg15.relationLc1269, Seg15.relationLc1269Part0, Seg15.relationLc1269Part1, Seg15.relationLc1269Part2, Seg15.relationLc1269Part3, Seg15.relationLc1269Part4, Seg15.relationLc1269Part5, Seg15.relationLc1269Part6, Seg15.relationLc1269Part7]
  rw [seg15AccX224_sum]
  ring

theorem seg15_lc1270 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1270 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY224 rho + rho 17737 := by
  simp only [Seg15.relationLc1270, Seg15.relationLc1270Part0, Seg15.relationLc1270Part1, Seg15.relationLc1270Part2, Seg15.relationLc1270Part3, Seg15.relationLc1270Part4, Seg15.relationLc1270Part5, Seg15.relationLc1270Part6, Seg15.relationLc1270Part7]
  rw [seg15AccY224_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
