import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc1131 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1131 rho = seg15AccX205 rho + seg15AccY205 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1131, Seg15.relationLc1131Part0, Seg15.relationLc1131Part1, Seg15.relationLc1131Part2, Seg15.relationLc1131Part3, Seg15.relationLc1131Part4, Seg15.relationLc1131Part5, Seg15.relationLc1131Part6, Seg15.relationLc1131Part7, Seg15.relationLc1131Part8, Seg15.relationLc1131Part9, Seg15.relationLc1131Part10, Seg15.relationLc1131Part11, Seg15.relationLc1131Part12]
  rw [seg15AccX205_sum, seg15AccY205_sum]
  ring

theorem seg15_lc1132 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1132 rho = 5784921358780517147321313440632775274927563998220086564825994498022190454221*seg15AccX205 rho + 6305079995656463654750648117447703086047002182022449475921073467854836326934*rho 16136 := by
  simp only [Seg15.relationLc1132, Seg15.relationLc1132Part0, Seg15.relationLc1132Part1, Seg15.relationLc1132Part2, Seg15.relationLc1132Part3, Seg15.relationLc1132Part4, Seg15.relationLc1132Part5, Seg15.relationLc1132Part6]
  rw [seg15AccX205_sum]
  ring

theorem seg15_lc1133 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1133 rho = 1957125926108579253371118424697298480298997708708714571039011901926067811585*seg15AccY205 rho + 1957125926108579253371118424697298480298997708708714571039011901926067811585 + 1610538767991596816650409780213098391033170561624469385315731459758725783327*rho 16136 := by
  simp only [Seg15.relationLc1133, Seg15.relationLc1133Part0, Seg15.relationLc1133Part1, Seg15.relationLc1133Part2, Seg15.relationLc1133Part3, Seg15.relationLc1133Part4, Seg15.relationLc1133Part5, Seg15.relationLc1133Part6]
  rw [seg15AccY205_sum]
  ring

theorem seg15_lc1134 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1134 rho = 888010359459640497065276007624754394479009484687871009606188348236954955058*seg15AccX205 rho + 1957125926108579253371118424697298480298997708708714571039011901926067811585*seg15AccY205 rho + 1957125926108579253371118424697298480298997708708714571039011901926067811585 + 2993481232146933279157417449155677566665656915066419064387537616889164379955*rho 16136 := by
  simp only [Seg15.relationLc1134, Seg15.relationLc1134Part0, Seg15.relationLc1134Part1, Seg15.relationLc1134Part2, Seg15.relationLc1134Part3, Seg15.relationLc1134Part4, Seg15.relationLc1134Part5, Seg15.relationLc1134Part6, Seg15.relationLc1134Part7, Seg15.relationLc1134Part8, Seg15.relationLc1134Part9, Seg15.relationLc1134Part10, Seg15.relationLc1134Part11, Seg15.relationLc1134Part12]
  rw [seg15AccX205_sum, seg15AccY205_sum]
  ring

theorem seg15_lc1135 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1135 rho = 7556451389968729927183548931156792136896889850466192818329045107680454283983*seg15AccX205 rho + 6487335823319791170877706514084248051076901626445349256896221553991341427456*seg15AccY205 rho + 6487335823319791170877706514084248051076901626445349256896221553991341427456 + 5450980517281437145091407489625868964710242420087644763547695839028244859086*rho 16136 := by
  simp only [Seg15.relationLc1135, Seg15.relationLc1135Part0, Seg15.relationLc1135Part1, Seg15.relationLc1135Part2, Seg15.relationLc1135Part3, Seg15.relationLc1135Part4, Seg15.relationLc1135Part5, Seg15.relationLc1135Part6, Seg15.relationLc1135Part7, Seg15.relationLc1135Part8, Seg15.relationLc1135Part9, Seg15.relationLc1135Part10, Seg15.relationLc1135Part11, Seg15.relationLc1135Part12]
  rw [seg15AccX205_sum, seg15AccY205_sum]
  ring

theorem seg15_lc1136 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1136 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX205 rho + rho 17583 := by
  simp only [Seg15.relationLc1136, Seg15.relationLc1136Part0, Seg15.relationLc1136Part1, Seg15.relationLc1136Part2, Seg15.relationLc1136Part3, Seg15.relationLc1136Part4, Seg15.relationLc1136Part5, Seg15.relationLc1136Part6]
  rw [seg15AccX205_sum]
  ring

theorem seg15_lc1137 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1137 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY205 rho + rho 17585 := by
  simp only [Seg15.relationLc1137, Seg15.relationLc1137Part0, Seg15.relationLc1137Part1, Seg15.relationLc1137Part2, Seg15.relationLc1137Part3, Seg15.relationLc1137Part4, Seg15.relationLc1137Part5, Seg15.relationLc1137Part6]
  rw [seg15AccY205_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
