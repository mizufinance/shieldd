import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc746 (rho : Nat -> Seg15.F) :
    Seg15.relationLc746 rho = seg15AccX150 rho + seg15AccY150 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc746, Seg15.relationLc746Part0, Seg15.relationLc746Part1, Seg15.relationLc746Part2, Seg15.relationLc746Part3, Seg15.relationLc746Part4, Seg15.relationLc746Part5, Seg15.relationLc746Part6, Seg15.relationLc746Part7, Seg15.relationLc746Part8, Seg15.relationLc746Part9]
  rw [seg15AccX150_sum, seg15AccY150_sum]
  ring

theorem seg15_lc747 (rho : Nat -> Seg15.F) :
    Seg15.relationLc747 rho = 481015789548022809936818797710406701423717712714693952242520185293036176048*seg15AccX150 rho + 5775556576858411646158082484809865716789842656243550876083649985645673455572*rho 16130 := by
  simp only [Seg15.relationLc747, Seg15.relationLc747Part0, Seg15.relationLc747Part1, Seg15.relationLc747Part2, Seg15.relationLc747Part3, Seg15.relationLc747Part4]
  rw [seg15AccX150_sum]
  ring

theorem seg15_lc748 (rho : Nat -> Seg15.F) :
    Seg15.relationLc748 rho = 6443546594132859595093629908190367994668625510347454729746931838690644669542*seg15AccY150 rho + 6443546594132859595093629908190367994668625510347454729746931838690644669542 + 3691096358027745336063657324176483550920035707413579978283300600227612312748*rho 16130 := by
  simp only [Seg15.relationLc748, Seg15.relationLc748Part0, Seg15.relationLc748Part1, Seg15.relationLc748Part2, Seg15.relationLc748Part3, Seg15.relationLc748Part4]
  rw [seg15AccY150_sum]
  ring

theorem seg15_lc749 (rho : Nat -> Seg15.F) :
    Seg15.relationLc749 rho = 2854113360462070250237665369511310630664090347204572612470743422269767583329*seg15AccX150 rho + 6443546594132859595093629908190367994668625510347454729746931838690644669542*seg15AccY150 rho + 6443546594132859595093629908190367994668625510347454729746931838690644669542 + 151421588100937353317181615817857404102268539262651372153589531488217465873*rho 16130 := by
  simp only [Seg15.relationLc749, Seg15.relationLc749Part0, Seg15.relationLc749Part1, Seg15.relationLc749Part2, Seg15.relationLc749Part3, Seg15.relationLc749Part4, Seg15.relationLc749Part5, Seg15.relationLc749Part6, Seg15.relationLc749Part7, Seg15.relationLc749Part8, Seg15.relationLc749Part9]
  rw [seg15AccX150_sum, seg15AccY150_sum]
  ring

theorem seg15_lc750 (rho : Nat -> Seg15.F) :
    Seg15.relationLc750 rho = 5590348388966300174011159569270235900711808987949491215464490033647641655712*seg15AccX150 rho + 2000915155295510829155195030591178536707273824806609098188301617226764569499*seg15AccY150 rho + 2000915155295510829155195030591178536707273824806609098188301617226764569499 + 8293040161327433070931643322963689127273630795891412455781643924429191773168*rho 16130 := by
  simp only [Seg15.relationLc750, Seg15.relationLc750Part0, Seg15.relationLc750Part1, Seg15.relationLc750Part2, Seg15.relationLc750Part3, Seg15.relationLc750Part4, Seg15.relationLc750Part5, Seg15.relationLc750Part6, Seg15.relationLc750Part7, Seg15.relationLc750Part8, Seg15.relationLc750Part9]
  rw [seg15AccX150_sum, seg15AccY150_sum]
  ring

theorem seg15_lc751 (rho : Nat -> Seg15.F) :
    Seg15.relationLc751 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX150 rho + rho 17137 := by
  simp only [Seg15.relationLc751, Seg15.relationLc751Part0, Seg15.relationLc751Part1, Seg15.relationLc751Part2, Seg15.relationLc751Part3, Seg15.relationLc751Part4]
  rw [seg15AccX150_sum]
  ring

theorem seg15_lc752 (rho : Nat -> Seg15.F) :
    Seg15.relationLc752 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY150 rho + rho 17139 := by
  simp only [Seg15.relationLc752, Seg15.relationLc752Part0, Seg15.relationLc752Part1, Seg15.relationLc752Part2, Seg15.relationLc752Part3, Seg15.relationLc752Part4]
  rw [seg15AccY150_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
