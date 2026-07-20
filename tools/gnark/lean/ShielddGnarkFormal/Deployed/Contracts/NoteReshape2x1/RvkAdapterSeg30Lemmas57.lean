import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1138 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1138 rho = seg30AccX206 rho + seg30AccY206 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc1138, Seg30.relationLc1138Part0, Seg30.relationLc1138Part1, Seg30.relationLc1138Part2, Seg30.relationLc1138Part3, Seg30.relationLc1138Part4, Seg30.relationLc1138Part5, Seg30.relationLc1138Part6, Seg30.relationLc1138Part7, Seg30.relationLc1138Part8, Seg30.relationLc1138Part9, Seg30.relationLc1138Part10, Seg30.relationLc1138Part11, Seg30.relationLc1138Part12]
  rw [seg30AccX206_sum, seg30AccY206_sum]
  ring

theorem seg30_lc1139 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1139 rho = 5905365879735766667841684091558409867820953894323093881227478821587200358292*seg30AccX206 rho + 7212764438683679537947725008823269311972987213902295979621436722051371346111*rho 28311 := by
  simp only [Seg30.relationLc1139, Seg30.relationLc1139Part0, Seg30.relationLc1139Part1, Seg30.relationLc1139Part2, Seg30.relationLc1139Part3, Seg30.relationLc1139Part4, Seg30.relationLc1139Part5, Seg30.relationLc1139Part6]
  rw [seg30AccX206_sum]
  ring

theorem seg30_lc1140 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1140 rho = 4565390105889309255164458630479635602181689632094937719216497752358944931276*seg30AccY206 rho + 4565390105889309255164458630479635602181689632094937719216497752358944931276 + 5884707577782438660459430595081945110501492710070465762925982429225625531051*rho 28311 := by
  simp only [Seg30.relationLc1140, Seg30.relationLc1140Part0, Seg30.relationLc1140Part1, Seg30.relationLc1140Part2, Seg30.relationLc1140Part3, Seg30.relationLc1140Part4, Seg30.relationLc1140Part5, Seg30.relationLc1140Part6]
  rw [seg30AccY206_sum]
  ring

theorem seg30_lc1141 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1141 rho = 1564501649722010868527949296547647441544835710773070100528640509989877181391*seg30AccX206 rho + 4565390105889309255164458630479635602181689632094937719216497752358944931276*seg30AccY206 rho + 4565390105889309255164458630479635602181689632094937719216497752358944931276 + 5487373825472086693849157757863494966617089989874130499299661029863117040539*rho 28311 := by
  simp only [Seg30.relationLc1141, Seg30.relationLc1141Part0, Seg30.relationLc1141Part1, Seg30.relationLc1141Part2, Seg30.relationLc1141Part3, Seg30.relationLc1141Part4, Seg30.relationLc1141Part5, Seg30.relationLc1141Part6, Seg30.relationLc1141Part7, Seg30.relationLc1141Part8, Seg30.relationLc1141Part9, Seg30.relationLc1141Part10, Seg30.relationLc1141Part11, Seg30.relationLc1141Part12]
  rw [seg30AccX206_sum, seg30AccY206_sum]
  ring

theorem seg30_lc1142 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1142 rho = 6879960099706359555720875642233899089831063624380993727406592945927532057650*seg30AccX206 rho + 3879071643539061169084366308301910929194209703059126108718735703558464307765*seg30AccY206 rho + 3879071643539061169084366308301910929194209703059126108718735703558464307765 + 2957087923956283730399667180918051564758809345279933328635572426054292198502*rho 28311 := by
  simp only [Seg30.relationLc1142, Seg30.relationLc1142Part0, Seg30.relationLc1142Part1, Seg30.relationLc1142Part2, Seg30.relationLc1142Part3, Seg30.relationLc1142Part4, Seg30.relationLc1142Part5, Seg30.relationLc1142Part6, Seg30.relationLc1142Part7, Seg30.relationLc1142Part8, Seg30.relationLc1142Part9, Seg30.relationLc1142Part10, Seg30.relationLc1142Part11, Seg30.relationLc1142Part12]
  rw [seg30AccX206_sum, seg30AccY206_sum]
  ring

theorem seg30_lc1143 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1143 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX206 rho + rho 29766 := by
  simp only [Seg30.relationLc1143, Seg30.relationLc1143Part0, Seg30.relationLc1143Part1, Seg30.relationLc1143Part2, Seg30.relationLc1143Part3, Seg30.relationLc1143Part4, Seg30.relationLc1143Part5, Seg30.relationLc1143Part6]
  rw [seg30AccX206_sum]
  ring

theorem seg30_lc1144 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1144 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY206 rho + rho 29768 := by
  simp only [Seg30.relationLc1144, Seg30.relationLc1144Part0, Seg30.relationLc1144Part1, Seg30.relationLc1144Part2, Seg30.relationLc1144Part3, Seg30.relationLc1144Part4, Seg30.relationLc1144Part5, Seg30.relationLc1144Part6]
  rw [seg30AccY206_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
