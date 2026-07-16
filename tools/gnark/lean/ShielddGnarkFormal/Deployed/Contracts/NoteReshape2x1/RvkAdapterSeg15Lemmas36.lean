import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc991 (rho : Nat -> Seg15.F) :
    Seg15.relationLc991 rho = seg15AccX185 rho + seg15AccY185 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc991, Seg15.relationLc991Part0, Seg15.relationLc991Part1, Seg15.relationLc991Part2, Seg15.relationLc991Part3, Seg15.relationLc991Part4, Seg15.relationLc991Part5, Seg15.relationLc991Part6, Seg15.relationLc991Part7, Seg15.relationLc991Part8, Seg15.relationLc991Part9, Seg15.relationLc991Part10, Seg15.relationLc991Part11]
  rw [seg15AccX185_sum, seg15AccY185_sum]
  ring

theorem seg15_lc992 (rho : Nat -> Seg15.F) :
    Seg15.relationLc992 rho = 4768430774787137461239983348768506902191005184144761558215255335008363303521*seg15AccX185 rho + 4418611128244402514898585934103632442583042684605626918124376504577736114022*rho 16136 := by
  simp only [Seg15.relationLc992, Seg15.relationLc992Part0, Seg15.relationLc992Part1, Seg15.relationLc992Part2, Seg15.relationLc992Part3, Seg15.relationLc992Part4, Seg15.relationLc992Part5]
  rw [seg15AccX185_sum]
  ring

theorem seg15_lc993 (rho : Nat -> Seg15.F) :
    Seg15.relationLc993 rho = 6629227314315963601615851724934144504898925614068174154939451162527919100461*seg15AccY185 rho + 6629227314315963601615851724934144504898925614068174154939451162527919100461 + 4543518876404653285116166354042357871768585069803000069050705909111993022531*rho 16136 := by
  simp only [Seg15.relationLc993, Seg15.relationLc993Part0, Seg15.relationLc993Part1, Seg15.relationLc993Part2, Seg15.relationLc993Part3, Seg15.relationLc993Part4, Seg15.relationLc993Part5]
  rw [seg15AccY185_sum]
  ring

theorem seg15_lc994 (rho : Nat -> Seg15.F) :
    Seg15.relationLc994 rho = 3632613122569427447388435477929823717695956385815714556122503646001894394180*seg15AccX185 rho + 6629227314315963601615851724934144504898925614068174154939451162527919100461*seg15AccY185 rho + 6629227314315963601615851724934144504898925614068174154939451162527919100461 + 2012481559670505916081231958609727112091662939725219135190660515349465702287*rho 16136 := by
  simp only [Seg15.relationLc994, Seg15.relationLc994Part0, Seg15.relationLc994Part1, Seg15.relationLc994Part2, Seg15.relationLc994Part3, Seg15.relationLc994Part4, Seg15.relationLc994Part5, Seg15.relationLc994Part6, Seg15.relationLc994Part7, Seg15.relationLc994Part8, Seg15.relationLc994Part9, Seg15.relationLc994Part10, Seg15.relationLc994Part11]
  rw [seg15AccX185_sum, seg15AccY185_sum]
  ring

theorem seg15_lc995 (rho : Nat -> Seg15.F) :
    Seg15.relationLc995 rho = 4811848626858942976860389460851722813679942949338349271812729809915514844861*seg15AccX185 rho + 1815234435112406822632973213847402026476973721085889672995782293389490138580*seg15AccY185 rho + 1815234435112406822632973213847402026476973721085889672995782293389490138580 + 6431980189757864508167592980171819419284236395428844692744572940567943536754*rho 16136 := by
  simp only [Seg15.relationLc995, Seg15.relationLc995Part0, Seg15.relationLc995Part1, Seg15.relationLc995Part2, Seg15.relationLc995Part3, Seg15.relationLc995Part4, Seg15.relationLc995Part5, Seg15.relationLc995Part6, Seg15.relationLc995Part7, Seg15.relationLc995Part8, Seg15.relationLc995Part9, Seg15.relationLc995Part10, Seg15.relationLc995Part11]
  rw [seg15AccX185_sum, seg15AccY185_sum]
  ring

theorem seg15_lc996 (rho : Nat -> Seg15.F) :
    Seg15.relationLc996 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX185 rho + rho 17423 := by
  simp only [Seg15.relationLc996, Seg15.relationLc996Part0, Seg15.relationLc996Part1, Seg15.relationLc996Part2, Seg15.relationLc996Part3, Seg15.relationLc996Part4, Seg15.relationLc996Part5]
  rw [seg15AccX185_sum]
  ring

theorem seg15_lc997 (rho : Nat -> Seg15.F) :
    Seg15.relationLc997 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY185 rho + rho 17425 := by
  simp only [Seg15.relationLc997, Seg15.relationLc997Part0, Seg15.relationLc997Part1, Seg15.relationLc997Part2, Seg15.relationLc997Part3, Seg15.relationLc997Part4, Seg15.relationLc997Part5]
  rw [seg15AccY185_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
