import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc928 (rho : Nat -> Seg15.F) :
    Seg15.relationLc928 rho = seg15AccX176 rho + seg15AccY176 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc928, Seg15.relationLc928Part0, Seg15.relationLc928Part1, Seg15.relationLc928Part2, Seg15.relationLc928Part3, Seg15.relationLc928Part4, Seg15.relationLc928Part5, Seg15.relationLc928Part6, Seg15.relationLc928Part7, Seg15.relationLc928Part8, Seg15.relationLc928Part9, Seg15.relationLc928Part10, Seg15.relationLc928Part11]
  rw [seg15AccX176_sum, seg15AccY176_sum]
  ring

theorem seg15_lc929 (rho : Nat -> Seg15.F) :
    Seg15.relationLc929 rho = 8429404847033746103949862958802942655156615580252866767552832809537189051094*seg15AccX176 rho + 4829230689170401974567318880568148208714935176888340488441060551668416755756*rho 16130 := by
  simp only [Seg15.relationLc929, Seg15.relationLc929Part0, Seg15.relationLc929Part1, Seg15.relationLc929Part2, Seg15.relationLc929Part3, Seg15.relationLc929Part4, Seg15.relationLc929Part5]
  rw [seg15AccX176_sum]
  ring

theorem seg15_lc930 (rho : Nat -> Seg15.F) :
    Seg15.relationLc930 rho = 6744273316061359264065612990180407531294457905884589499976832734597190176077*seg15AccY176 rho + 6744273316061359264065612990180407531294457905884589499976832734597190176077 + 3005555258524522938312861139523290434503782011712304083854485010325988667929*rho 16130 := by
  simp only [Seg15.relationLc930, Seg15.relationLc930Part0, Seg15.relationLc930Part1, Seg15.relationLc930Part2, Seg15.relationLc930Part3, Seg15.relationLc930Part4, Seg15.relationLc930Part5]
  rw [seg15AccY176_sum]
  ring

theorem seg15_lc931 (rho : Nat -> Seg15.F) :
    Seg15.relationLc931 rho = 2884696944226310378518533060192842574148860916956005519155504311771064586065*seg15AccX176 rho + 6744273316061359264065612990180407531294457905884589499976832734597190176077*seg15AccY176 rho + 6744273316061359264065612990180407531294457905884589499976832734597190176077 + 396386756943282430443336090221272456318950815467018656908749496497722592951*rho 16130 := by
  simp only [Seg15.relationLc931, Seg15.relationLc931Part0, Seg15.relationLc931Part1, Seg15.relationLc931Part2, Seg15.relationLc931Part3, Seg15.relationLc931Part4, Seg15.relationLc931Part5, Seg15.relationLc931Part6, Seg15.relationLc931Part7, Seg15.relationLc931Part8, Seg15.relationLc931Part9, Seg15.relationLc931Part10, Seg15.relationLc931Part11]
  rw [seg15AccX176_sum, seg15AccY176_sum]
  ring

theorem seg15_lc932 (rho : Nat -> Seg15.F) :
    Seg15.relationLc932 rho = 5559764805202060045730291878588703957227038418198058308779729144146344652976*seg15AccX176 rho + 1700188433367011160183211948601139000081441429269474327958400721320219062964*seg15AccY176 rho + 1700188433367011160183211948601139000081441429269474327958400721320219062964 + 8048074992485087993805488848560274075056948519687045171026483959419686646090*rho 16130 := by
  simp only [Seg15.relationLc932, Seg15.relationLc932Part0, Seg15.relationLc932Part1, Seg15.relationLc932Part2, Seg15.relationLc932Part3, Seg15.relationLc932Part4, Seg15.relationLc932Part5, Seg15.relationLc932Part6, Seg15.relationLc932Part7, Seg15.relationLc932Part8, Seg15.relationLc932Part9, Seg15.relationLc932Part10, Seg15.relationLc932Part11]
  rw [seg15AccX176_sum, seg15AccY176_sum]
  ring

theorem seg15_lc933 (rho : Nat -> Seg15.F) :
    Seg15.relationLc933 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX176 rho + rho 17345 := by
  simp only [Seg15.relationLc933, Seg15.relationLc933Part0, Seg15.relationLc933Part1, Seg15.relationLc933Part2, Seg15.relationLc933Part3, Seg15.relationLc933Part4, Seg15.relationLc933Part5]
  rw [seg15AccX176_sum]
  ring

theorem seg15_lc934 (rho : Nat -> Seg15.F) :
    Seg15.relationLc934 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY176 rho + rho 17347 := by
  simp only [Seg15.relationLc934, Seg15.relationLc934Part0, Seg15.relationLc934Part1, Seg15.relationLc934Part2, Seg15.relationLc934Part3, Seg15.relationLc934Part4, Seg15.relationLc934Part5]
  rw [seg15AccY176_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
