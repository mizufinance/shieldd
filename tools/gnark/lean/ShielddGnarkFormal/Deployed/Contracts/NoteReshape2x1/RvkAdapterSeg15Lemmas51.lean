import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1096 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1096 rho = seg15AccX200 rho + seg15AccY200 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc1096, Seg15.relationLc1096Part0, Seg15.relationLc1096Part1, Seg15.relationLc1096Part2, Seg15.relationLc1096Part3, Seg15.relationLc1096Part4, Seg15.relationLc1096Part5, Seg15.relationLc1096Part6, Seg15.relationLc1096Part7, Seg15.relationLc1096Part8, Seg15.relationLc1096Part9, Seg15.relationLc1096Part10, Seg15.relationLc1096Part11, Seg15.relationLc1096Part12]
  rw [seg15AccX200_sum, seg15AccY200_sum]
  ring

theorem seg15_lc1097 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1097 rho = 1746227751459114646722528869200681138402567811675572997694830651943215246450*seg15AccX200 rho + 5052115677828846873756212072743373167809060123087419825114718750182894204087*rho 16130 := by
  simp only [Seg15.relationLc1097, Seg15.relationLc1097Part0, Seg15.relationLc1097Part1, Seg15.relationLc1097Part2, Seg15.relationLc1097Part3, Seg15.relationLc1097Part4, Seg15.relationLc1097Part5, Seg15.relationLc1097Part6]
  rw [seg15AccX200_sum]
  ring

theorem seg15_lc1098 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1098 rho = 2836335629156425519980953814768748374574497271815974709514080933954942677220*seg15AccY200 rho + 2836335629156425519980953814768748374574497271815974709514080933954942677220 + 4158914102388540119305092671029422258422421911007114277230171451075976427611*rho 16130 := by
  simp only [Seg15.relationLc1098, Seg15.relationLc1098Part0, Seg15.relationLc1098Part1, Seg15.relationLc1098Part2, Seg15.relationLc1098Part3, Seg15.relationLc1098Part4, Seg15.relationLc1098Part5, Seg15.relationLc1098Part6]
  rw [seg15AccY200_sum]
  ring

theorem seg15_lc1099 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1099 rho = 3047404678791255503832486498557128897827915538937307231197318536114504894340*seg15AccX200 rho + 2836335629156425519980953814768748374574497271815974709514080933954942677220*seg15AccY200 rho + 2836335629156425519980953814768748374574497271815974709514080933954942677220 + 4859399886246508160660922676579945266039695626303904537676686870715014893008*rho 16130 := by
  simp only [Seg15.relationLc1099, Seg15.relationLc1099Part0, Seg15.relationLc1099Part1, Seg15.relationLc1099Part2, Seg15.relationLc1099Part3, Seg15.relationLc1099Part4, Seg15.relationLc1099Part5, Seg15.relationLc1099Part6, Seg15.relationLc1099Part7, Seg15.relationLc1099Part8, Seg15.relationLc1099Part9, Seg15.relationLc1099Part10, Seg15.relationLc1099Part11, Seg15.relationLc1099Part12]
  rw [seg15AccX200_sum, seg15AccY200_sum]
  ring

theorem seg15_lc1100 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1100 rho = 5397057070637114920416338440224417633547983796216756596737914919802904344701*seg15AccX200 rho + 5608126120271944904267871124012798156801402063338089118421152521962466561821*seg15AccY200 rho + 5608126120271944904267871124012798156801402063338089118421152521962466561821 + 3585061863181862263587902262201601265336203708850159290258546585202394346033*rho 16130 := by
  simp only [Seg15.relationLc1100, Seg15.relationLc1100Part0, Seg15.relationLc1100Part1, Seg15.relationLc1100Part2, Seg15.relationLc1100Part3, Seg15.relationLc1100Part4, Seg15.relationLc1100Part5, Seg15.relationLc1100Part6, Seg15.relationLc1100Part7, Seg15.relationLc1100Part8, Seg15.relationLc1100Part9, Seg15.relationLc1100Part10, Seg15.relationLc1100Part11, Seg15.relationLc1100Part12]
  rw [seg15AccX200_sum, seg15AccY200_sum]
  ring

theorem seg15_lc1101 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1101 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX200 rho + rho 17537 := by
  simp only [Seg15.relationLc1101, Seg15.relationLc1101Part0, Seg15.relationLc1101Part1, Seg15.relationLc1101Part2, Seg15.relationLc1101Part3, Seg15.relationLc1101Part4, Seg15.relationLc1101Part5, Seg15.relationLc1101Part6]
  rw [seg15AccX200_sum]
  ring

theorem seg15_lc1102 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1102 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY200 rho + rho 17539 := by
  simp only [Seg15.relationLc1102, Seg15.relationLc1102Part0, Seg15.relationLc1102Part1, Seg15.relationLc1102Part2, Seg15.relationLc1102Part3, Seg15.relationLc1102Part4, Seg15.relationLc1102Part5, Seg15.relationLc1102Part6]
  rw [seg15AccY200_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
