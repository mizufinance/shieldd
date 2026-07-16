import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1166 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1166 rho = seg15AccX210 rho + seg15AccY210 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1166, Seg15.relationLc1166Part0, Seg15.relationLc1166Part1, Seg15.relationLc1166Part2, Seg15.relationLc1166Part3, Seg15.relationLc1166Part4, Seg15.relationLc1166Part5, Seg15.relationLc1166Part6, Seg15.relationLc1166Part7, Seg15.relationLc1166Part8, Seg15.relationLc1166Part9, Seg15.relationLc1166Part10, Seg15.relationLc1166Part11, Seg15.relationLc1166Part12, Seg15.relationLc1166Part13]
  rw [seg15AccX210_sum, seg15AccY210_sum]
  ring

theorem seg15_lc1167 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1167 rho = 8095440306743994308430258663445334264066866745488327351433206910921384811391*seg15AccX210 rho + 6522515985008123781222867578839581425126788722572172180395613184190032290736*rho 16136 := by
  simp only [Seg15.relationLc1167, Seg15.relationLc1167Part0, Seg15.relationLc1167Part1, Seg15.relationLc1167Part2, Seg15.relationLc1167Part3, Seg15.relationLc1167Part4, Seg15.relationLc1167Part5, Seg15.relationLc1167Part6]
  rw [seg15AccX210_sum]
  ring

theorem seg15_lc1168 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1168 rho = 1495163088112256875227847031071427603812208236326293085371820305107097154764*seg15AccY210 rho + 1495163088112256875227847031071427603812208236326293085371820305107097154764 + 3327300495797576422479104324765937395508648898935736306963926657954934588870*rho 16136 := by
  simp only [Seg15.relationLc1168, Seg15.relationLc1168Part0, Seg15.relationLc1168Part1, Seg15.relationLc1168Part2, Seg15.relationLc1168Part3, Seg15.relationLc1168Part4, Seg15.relationLc1168Part5, Seg15.relationLc1168Part6]
  rw [seg15AccY210_sum]
  ring

theorem seg15_lc1169 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1169 rho = 8402417410572326090425736246177422264498061691123287034192919477637449900076*seg15AccX210 rho + 1495163088112256875227847031071427603812208236326293085371820305107097154764*seg15AccY210 rho + 1495163088112256875227847031071427603812208236326293085371820305107097154764 + 6286838081656637671282970479287524886942223306521162226240945065616241774304*rho 16136 := by
  simp only [Seg15.relationLc1169, Seg15.relationLc1169Part0, Seg15.relationLc1169Part1, Seg15.relationLc1169Part2, Seg15.relationLc1169Part3, Seg15.relationLc1169Part4, Seg15.relationLc1169Part5, Seg15.relationLc1169Part6, Seg15.relationLc1169Part7, Seg15.relationLc1169Part8, Seg15.relationLc1169Part9, Seg15.relationLc1169Part10, Seg15.relationLc1169Part11, Seg15.relationLc1169Part12, Seg15.relationLc1169Part13]
  rw [seg15AccX210_sum, seg15AccY210_sum]
  ring

theorem seg15_lc1170 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1170 rho = 42044338856044333823088692604124266877837644030776793742313978279959338965*seg15AccX210 rho + 6949298661316113549020977907710118927563691098827770742563413150810312084277*seg15AccY210 rho + 6949298661316113549020977907710118927563691098827770742563413150810312084277 + 2157623667771732752965854459494021644433676028632901601694288390301167464737*rho 16136 := by
  simp only [Seg15.relationLc1170, Seg15.relationLc1170Part0, Seg15.relationLc1170Part1, Seg15.relationLc1170Part2, Seg15.relationLc1170Part3, Seg15.relationLc1170Part4, Seg15.relationLc1170Part5, Seg15.relationLc1170Part6, Seg15.relationLc1170Part7, Seg15.relationLc1170Part8, Seg15.relationLc1170Part9, Seg15.relationLc1170Part10, Seg15.relationLc1170Part11, Seg15.relationLc1170Part12, Seg15.relationLc1170Part13]
  rw [seg15AccX210_sum, seg15AccY210_sum]
  ring

theorem seg15_lc1171 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1171 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX210 rho + rho 17623 := by
  simp only [Seg15.relationLc1171, Seg15.relationLc1171Part0, Seg15.relationLc1171Part1, Seg15.relationLc1171Part2, Seg15.relationLc1171Part3, Seg15.relationLc1171Part4, Seg15.relationLc1171Part5, Seg15.relationLc1171Part6]
  rw [seg15AccX210_sum]
  ring

theorem seg15_lc1172 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1172 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY210 rho + rho 17625 := by
  simp only [Seg15.relationLc1172, Seg15.relationLc1172Part0, Seg15.relationLc1172Part1, Seg15.relationLc1172Part2, Seg15.relationLc1172Part3, Seg15.relationLc1172Part4, Seg15.relationLc1172Part5, Seg15.relationLc1172Part6]
  rw [seg15AccY210_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
