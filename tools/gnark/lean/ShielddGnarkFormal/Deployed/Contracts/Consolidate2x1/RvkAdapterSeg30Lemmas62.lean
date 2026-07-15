import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1173 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1173 rho = seg30AccX211 rho + seg30AccY211 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1173, Seg30.relationLc1173Part0, Seg30.relationLc1173Part1, Seg30.relationLc1173Part2, Seg30.relationLc1173Part3, Seg30.relationLc1173Part4, Seg30.relationLc1173Part5, Seg30.relationLc1173Part6, Seg30.relationLc1173Part7, Seg30.relationLc1173Part8, Seg30.relationLc1173Part9, Seg30.relationLc1173Part10, Seg30.relationLc1173Part11, Seg30.relationLc1173Part12, Seg30.relationLc1173Part13]
  rw [seg30AccX211_sum, seg30AccY211_sum]
  ring

theorem seg30_lc1174 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1174 rho = 4190163747198856086804321187099998496766814740869838856914866521134137791387*seg30AccX211 rho + 2957003690915387545057073161426133650682665780963563382974906973640890039826*rho 28317 := by
  simp only [Seg30.relationLc1174, Seg30.relationLc1174Part0, Seg30.relationLc1174Part1, Seg30.relationLc1174Part2, Seg30.relationLc1174Part3, Seg30.relationLc1174Part4, Seg30.relationLc1174Part5, Seg30.relationLc1174Part6]
  rw [seg30AccX211_sum]
  ring

theorem seg30_lc1175 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1175 rho = 3423941501773624219361405225598090367295964686878626572370377742407211002101*seg30AccY211 rho + 3423941501773624219361405225598090367295964686878626572370377742407211002101 + 7189357305306567768438575906420187797573860854945526195358531359241171218779*rho 28317 := by
  simp only [Seg30.relationLc1175, Seg30.relationLc1175Part0, Seg30.relationLc1175Part1, Seg30.relationLc1175Part2, Seg30.relationLc1175Part3, Seg30.relationLc1175Part4, Seg30.relationLc1175Part5, Seg30.relationLc1175Part6]
  rw [seg30AccY211_sum]
  ring

theorem seg30_lc1176 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1176 rho = 4403911757397180494630487785424705655549092442108083537853329215356191224522*seg30AccX211 rho + 3423941501773624219361405225598090367295964686878626572370377742407211002101*seg30AccY211 rho + 3423941501773624219361405225598090367295964686878626572370377742407211002101 + 7545333354915412002607611934353548454023851547214817711257488511136289346352*rho 28317 := by
  simp only [Seg30.relationLc1176, Seg30.relationLc1176Part0, Seg30.relationLc1176Part1, Seg30.relationLc1176Part2, Seg30.relationLc1176Part3, Seg30.relationLc1176Part4, Seg30.relationLc1176Part5, Seg30.relationLc1176Part6, Seg30.relationLc1176Part7, Seg30.relationLc1176Part8, Seg30.relationLc1176Part9, Seg30.relationLc1176Part10, Seg30.relationLc1176Part11, Seg30.relationLc1176Part12, Seg30.relationLc1176Part13]
  rw [seg30AccX211_sum, seg30AccY211_sum]
  ring

theorem seg30_lc1177 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1177 rho = 4040549992031189929618337153356840875826806893045980290081904240561218014519*seg30AccX211 rho + 5020520247654746204887419713183456164079934648275437255564855713510198236940*seg30AccY211 rho + 5020520247654746204887419713183456164079934648275437255564855713510198236940 + 899128394512958421641213004427998077352047787939246116677744944781119892689*rho 28317 := by
  simp only [Seg30.relationLc1177, Seg30.relationLc1177Part0, Seg30.relationLc1177Part1, Seg30.relationLc1177Part2, Seg30.relationLc1177Part3, Seg30.relationLc1177Part4, Seg30.relationLc1177Part5, Seg30.relationLc1177Part6, Seg30.relationLc1177Part7, Seg30.relationLc1177Part8, Seg30.relationLc1177Part9, Seg30.relationLc1177Part10, Seg30.relationLc1177Part11, Seg30.relationLc1177Part12, Seg30.relationLc1177Part13]
  rw [seg30AccX211_sum, seg30AccY211_sum]
  ring

theorem seg30_lc1178 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1178 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX211 rho + rho 29812 := by
  simp only [Seg30.relationLc1178, Seg30.relationLc1178Part0, Seg30.relationLc1178Part1, Seg30.relationLc1178Part2, Seg30.relationLc1178Part3, Seg30.relationLc1178Part4, Seg30.relationLc1178Part5, Seg30.relationLc1178Part6]
  rw [seg30AccX211_sum]
  ring

theorem seg30_lc1179 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1179 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY211 rho + rho 29814 := by
  simp only [Seg30.relationLc1179, Seg30.relationLc1179Part0, Seg30.relationLc1179Part1, Seg30.relationLc1179Part2, Seg30.relationLc1179Part3, Seg30.relationLc1179Part4, Seg30.relationLc1179Part5, Seg30.relationLc1179Part6]
  rw [seg30AccY211_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
