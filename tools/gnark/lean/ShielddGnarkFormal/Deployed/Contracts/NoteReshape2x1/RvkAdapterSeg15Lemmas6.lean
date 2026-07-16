import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc781 (rho : Nat -> Seg15.F) :
    Seg15.relationLc781 rho = seg15AccX155 rho + seg15AccY155 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc781, Seg15.relationLc781Part0, Seg15.relationLc781Part1, Seg15.relationLc781Part2, Seg15.relationLc781Part3, Seg15.relationLc781Part4, Seg15.relationLc781Part5, Seg15.relationLc781Part6, Seg15.relationLc781Part7, Seg15.relationLc781Part8, Seg15.relationLc781Part9]
  rw [seg15AccX155_sum, seg15AccY155_sum]
  ring

theorem seg15_lc782 (rho : Nat -> Seg15.F) :
    Seg15.relationLc782 rho = 16584842977476778781971574146594730782542467233602097689905393271237537493*seg15AccX155 rho + 3748882087243726086007231001579964875968325427120256406653143658307105684020*rho 16136 := by
  simp only [Seg15.relationLc782, Seg15.relationLc782Part0, Seg15.relationLc782Part1, Seg15.relationLc782Part2, Seg15.relationLc782Part3, Seg15.relationLc782Part4]
  rw [seg15AccX155_sum]
  ring

theorem seg15_lc783 (rho : Nat -> Seg15.F) :
    Seg15.relationLc783 rho = 762645621093534921682121564019936658324020975024203898001773730935157047072*seg15AccY155 rho + 762645621093534921682121564019936658324020975024203898001773730935157047072 + 6655627651738650277154479516854397930477796078333111284837643786663947613835*rho 16136 := by
  simp only [Seg15.relationLc783, Seg15.relationLc783Part0, Seg15.relationLc783Part1, Seg15.relationLc783Part2, Seg15.relationLc783Part3, Seg15.relationLc783Part4]
  rw [seg15AccY155_sum]
  ring

theorem seg15_lc784 (rho : Nat -> Seg15.F) :
    Seg15.relationLc784 rho = 6873534600028911072494750908983108081888155911158913126445027796588606605872*seg15AccX155 rho + 762645621093534921682121564019936658324020975024203898001773730935157047072*seg15AccY155 rho + 762645621093534921682121564019936658324020975024203898001773730935157047072 + 5044007146166678741667698729474268045099469169707896265866449956671879416138*rho 16136 := by
  simp only [Seg15.relationLc784, Seg15.relationLc784Part0, Seg15.relationLc784Part1, Seg15.relationLc784Part2, Seg15.relationLc784Part3, Seg15.relationLc784Part4, Seg15.relationLc784Part5, Seg15.relationLc784Part6, Seg15.relationLc784Part7, Seg15.relationLc784Part8, Seg15.relationLc784Part9]
  rw [seg15AccX155_sum, seg15AccY155_sum]
  ring

theorem seg15_lc785 (rho : Nat -> Seg15.F) :
    Seg15.relationLc785 rho = 1570927149399459351754074029798438449487743423995150701490205659328802633169*seg15AccX155 rho + 7681816128334835502566703374761609873051878360129859929933459724982252191969*seg15AccY155 rho + 7681816128334835502566703374761609873051878360129859929933459724982252191969 + 3400454603261691682581126209307278486276430165446167562068783499245529822903*rho 16136 := by
  simp only [Seg15.relationLc785, Seg15.relationLc785Part0, Seg15.relationLc785Part1, Seg15.relationLc785Part2, Seg15.relationLc785Part3, Seg15.relationLc785Part4, Seg15.relationLc785Part5, Seg15.relationLc785Part6, Seg15.relationLc785Part7, Seg15.relationLc785Part8, Seg15.relationLc785Part9]
  rw [seg15AccX155_sum, seg15AccY155_sum]
  ring

theorem seg15_lc786 (rho : Nat -> Seg15.F) :
    Seg15.relationLc786 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX155 rho + rho 17183 := by
  simp only [Seg15.relationLc786, Seg15.relationLc786Part0, Seg15.relationLc786Part1, Seg15.relationLc786Part2, Seg15.relationLc786Part3, Seg15.relationLc786Part4]
  rw [seg15AccX155_sum]
  ring

theorem seg15_lc787 (rho : Nat -> Seg15.F) :
    Seg15.relationLc787 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY155 rho + rho 17185 := by
  simp only [Seg15.relationLc787, Seg15.relationLc787Part0, Seg15.relationLc787Part1, Seg15.relationLc787Part2, Seg15.relationLc787Part3, Seg15.relationLc787Part4]
  rw [seg15AccY155_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
