import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc991 (rho : Nat -> Seg30.F) :
    Seg30.relationLc991 rho = seg30AccX185 rho + seg30AccY185 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc991, Seg30.relationLc991Part0, Seg30.relationLc991Part1, Seg30.relationLc991Part2, Seg30.relationLc991Part3, Seg30.relationLc991Part4, Seg30.relationLc991Part5, Seg30.relationLc991Part6, Seg30.relationLc991Part7, Seg30.relationLc991Part8, Seg30.relationLc991Part9, Seg30.relationLc991Part10, Seg30.relationLc991Part11]
  rw [seg30AccX185_sum, seg30AccY185_sum]
  ring

theorem seg30_lc992 (rho : Nat -> Seg30.F) :
    Seg30.relationLc992 rho = 4768430774787137461239983348768506902191005184144761558215255335008363303521*seg30AccX185 rho + 4418611128244402514898585934103632442583042684605626918124376504577736114022*rho 28311 := by
  simp only [Seg30.relationLc992, Seg30.relationLc992Part0, Seg30.relationLc992Part1, Seg30.relationLc992Part2, Seg30.relationLc992Part3, Seg30.relationLc992Part4, Seg30.relationLc992Part5]
  rw [seg30AccX185_sum]
  ring

theorem seg30_lc993 (rho : Nat -> Seg30.F) :
    Seg30.relationLc993 rho = 6629227314315963601615851724934144504898925614068174154939451162527919100461*seg30AccY185 rho + 6629227314315963601615851724934144504898925614068174154939451162527919100461 + 4543518876404653285116166354042357871768585069803000069050705909111993022531*rho 28311 := by
  simp only [Seg30.relationLc993, Seg30.relationLc993Part0, Seg30.relationLc993Part1, Seg30.relationLc993Part2, Seg30.relationLc993Part3, Seg30.relationLc993Part4, Seg30.relationLc993Part5]
  rw [seg30AccY185_sum]
  ring

theorem seg30_lc994 (rho : Nat -> Seg30.F) :
    Seg30.relationLc994 rho = 3632613122569427447388435477929823717695956385815714556122503646001894394180*seg30AccX185 rho + 6629227314315963601615851724934144504898925614068174154939451162527919100461*seg30AccY185 rho + 6629227314315963601615851724934144504898925614068174154939451162527919100461 + 2012481559670505916081231958609727112091662939725219135190660515349465702287*rho 28311 := by
  simp only [Seg30.relationLc994, Seg30.relationLc994Part0, Seg30.relationLc994Part1, Seg30.relationLc994Part2, Seg30.relationLc994Part3, Seg30.relationLc994Part4, Seg30.relationLc994Part5, Seg30.relationLc994Part6, Seg30.relationLc994Part7, Seg30.relationLc994Part8, Seg30.relationLc994Part9, Seg30.relationLc994Part10, Seg30.relationLc994Part11]
  rw [seg30AccX185_sum, seg30AccY185_sum]
  ring

theorem seg30_lc995 (rho : Nat -> Seg30.F) :
    Seg30.relationLc995 rho = 4811848626858942976860389460851722813679942949338349271812729809915514844861*seg30AccX185 rho + 1815234435112406822632973213847402026476973721085889672995782293389490138580*seg30AccY185 rho + 1815234435112406822632973213847402026476973721085889672995782293389490138580 + 6431980189757864508167592980171819419284236395428844692744572940567943536754*rho 28311 := by
  simp only [Seg30.relationLc995, Seg30.relationLc995Part0, Seg30.relationLc995Part1, Seg30.relationLc995Part2, Seg30.relationLc995Part3, Seg30.relationLc995Part4, Seg30.relationLc995Part5, Seg30.relationLc995Part6, Seg30.relationLc995Part7, Seg30.relationLc995Part8, Seg30.relationLc995Part9, Seg30.relationLc995Part10, Seg30.relationLc995Part11]
  rw [seg30AccX185_sum, seg30AccY185_sum]
  ring

theorem seg30_lc996 (rho : Nat -> Seg30.F) :
    Seg30.relationLc996 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX185 rho + rho 29598 := by
  simp only [Seg30.relationLc996, Seg30.relationLc996Part0, Seg30.relationLc996Part1, Seg30.relationLc996Part2, Seg30.relationLc996Part3, Seg30.relationLc996Part4, Seg30.relationLc996Part5]
  rw [seg30AccX185_sum]
  ring

theorem seg30_lc997 (rho : Nat -> Seg30.F) :
    Seg30.relationLc997 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY185 rho + rho 29600 := by
  simp only [Seg30.relationLc997, Seg30.relationLc997Part0, Seg30.relationLc997Part1, Seg30.relationLc997Part2, Seg30.relationLc997Part3, Seg30.relationLc997Part4, Seg30.relationLc997Part5]
  rw [seg30AccY185_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
