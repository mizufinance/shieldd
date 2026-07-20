import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1089 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1089 rho = seg30AccX199 rho + seg30AccY199 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc1089, Seg30.relationLc1089Part0, Seg30.relationLc1089Part1, Seg30.relationLc1089Part2, Seg30.relationLc1089Part3, Seg30.relationLc1089Part4, Seg30.relationLc1089Part5, Seg30.relationLc1089Part6, Seg30.relationLc1089Part7, Seg30.relationLc1089Part8, Seg30.relationLc1089Part9, Seg30.relationLc1089Part10, Seg30.relationLc1089Part11, Seg30.relationLc1089Part12]
  rw [seg30AccX199_sum, seg30AccY199_sum]
  ring

theorem seg30_lc1090 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1090 rho = 3100448320433834111918975386863796058846185529823286084341039373912753248800*seg30AccX199 rho + 3903952192111930461238178835992593518359008067511423121083754618642940815645*rho 28311 := by
  simp only [Seg30.relationLc1090, Seg30.relationLc1090Part0, Seg30.relationLc1090Part1, Seg30.relationLc1090Part2, Seg30.relationLc1090Part3, Seg30.relationLc1090Part4, Seg30.relationLc1090Part5, Seg30.relationLc1090Part6]
  rw [seg30AccX199_sum]
  ring

theorem seg30_lc1091 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1091 rho = 1318318980829517938862932266652645911449606932466552744558540909070597892155*seg30AccY199 rho + 1318318980829517938862932266652645911449606932466552744558540909070597892155 + 5094008693542661590663718289535533802753982210673550470075594113034958991626*rho 28311 := by
  simp only [Seg30.relationLc1091, Seg30.relationLc1091Part0, Seg30.relationLc1091Part1, Seg30.relationLc1091Part2, Seg30.relationLc1091Part3, Seg30.relationLc1091Part4, Seg30.relationLc1091Part5, Seg30.relationLc1091Part6]
  rw [seg30AccY199_sum]
  ring

theorem seg30_lc1092 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1092 rho = 993341399989243738735601399753165446771694951840289952003094642907842778255*seg30AccX199 rho + 1318318980829517938862932266652645911449606932466552744558540909070597892155*seg30AccY199 rho + 1318318980829517938862932266652645911449606932466552744558540909070597892155 + 5645965964919523856151390150434559708149351683395451164290862151907641070708*rho 28311 := by
  simp only [Seg30.relationLc1092, Seg30.relationLc1092Part0, Seg30.relationLc1092Part1, Seg30.relationLc1092Part2, Seg30.relationLc1092Part3, Seg30.relationLc1092Part4, Seg30.relationLc1092Part5, Seg30.relationLc1092Part6, Seg30.relationLc1092Part7, Seg30.relationLc1092Part8, Seg30.relationLc1092Part9, Seg30.relationLc1092Part10, Seg30.relationLc1092Part11, Seg30.relationLc1092Part12]
  rw [seg30AccX199_sum, seg30AccY199_sum]
  ring

theorem seg30_lc1093 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1093 rho = 7451120349439126685513223539028381084604204383313773875932138813009566460786*seg30AccX199 rho + 7126142768598852485385892672128900619926292402687511083376692546846811346886*seg30AccY199 rho + 7126142768598852485385892672128900619926292402687511083376692546846811346886 + 2798495784508846568097434788346986823226547651758612663644371304009768168333*rho 28311 := by
  simp only [Seg30.relationLc1093, Seg30.relationLc1093Part0, Seg30.relationLc1093Part1, Seg30.relationLc1093Part2, Seg30.relationLc1093Part3, Seg30.relationLc1093Part4, Seg30.relationLc1093Part5, Seg30.relationLc1093Part6, Seg30.relationLc1093Part7, Seg30.relationLc1093Part8, Seg30.relationLc1093Part9, Seg30.relationLc1093Part10, Seg30.relationLc1093Part11, Seg30.relationLc1093Part12]
  rw [seg30AccX199_sum, seg30AccY199_sum]
  ring

theorem seg30_lc1094 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1094 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX199 rho + rho 29710 := by
  simp only [Seg30.relationLc1094, Seg30.relationLc1094Part0, Seg30.relationLc1094Part1, Seg30.relationLc1094Part2, Seg30.relationLc1094Part3, Seg30.relationLc1094Part4, Seg30.relationLc1094Part5, Seg30.relationLc1094Part6]
  rw [seg30AccX199_sum]
  ring

theorem seg30_lc1095 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1095 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY199 rho + rho 29712 := by
  simp only [Seg30.relationLc1095, Seg30.relationLc1095Part0, Seg30.relationLc1095Part1, Seg30.relationLc1095Part2, Seg30.relationLc1095Part3, Seg30.relationLc1095Part4, Seg30.relationLc1095Part5, Seg30.relationLc1095Part6]
  rw [seg30AccY199_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
