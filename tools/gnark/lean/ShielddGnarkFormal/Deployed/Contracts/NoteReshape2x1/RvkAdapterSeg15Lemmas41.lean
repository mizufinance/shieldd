import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1026 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1026 rho = seg15AccX190 rho + seg15AccY190 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc1026, Seg15.relationLc1026Part0, Seg15.relationLc1026Part1, Seg15.relationLc1026Part2, Seg15.relationLc1026Part3, Seg15.relationLc1026Part4, Seg15.relationLc1026Part5, Seg15.relationLc1026Part6, Seg15.relationLc1026Part7, Seg15.relationLc1026Part8, Seg15.relationLc1026Part9, Seg15.relationLc1026Part10, Seg15.relationLc1026Part11]
  rw [seg15AccX190_sum, seg15AccY190_sum]
  ring

theorem seg15_lc1027 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1027 rho = 3074806479406243116681759056724828018775099874945181348407601938470416243855*seg15AccX190 rho + 7261441290400037072825735736814214977494481938255887747644323433960601499060*rho 16130 := by
  simp only [Seg15.relationLc1027, Seg15.relationLc1027Part0, Seg15.relationLc1027Part1, Seg15.relationLc1027Part2, Seg15.relationLc1027Part3, Seg15.relationLc1027Part4, Seg15.relationLc1027Part5]
  rw [seg15AccX190_sum]
  ring

theorem seg15_lc1028 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1028 rho = 5459776575051823876287356786403046195135262359226183039126648835687933207042*seg15AccY190 rho + 5459776575051823876287356786403046195135262359226183039126648835687933207042 + 1364466237063320993296490163865584146933087209969010022639352897183729935187*rho 16130 := by
  simp only [Seg15.relationLc1028, Seg15.relationLc1028Part0, Seg15.relationLc1028Part1, Seg15.relationLc1028Part2, Seg15.relationLc1028Part3, Seg15.relationLc1028Part4, Seg15.relationLc1028Part5]
  rw [seg15AccY190_sum]
  ring

theorem seg15_lc1029 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1029 rho = 7699146793911002446705708586713374371210857950641918888938113386142011075989*seg15AccX190 rho + 5459776575051823876287356786403046195135262359226183039126648835687933207042*seg15AccY190 rho + 5459776575051823876287356786403046195135262359226183039126648835687933207042 + 3966455931952028219918215727852228466415735625603414275445513584849122584577*rho 16130 := by
  simp only [Seg15.relationLc1029, Seg15.relationLc1029Part0, Seg15.relationLc1029Part1, Seg15.relationLc1029Part2, Seg15.relationLc1029Part3, Seg15.relationLc1029Part4, Seg15.relationLc1029Part5, Seg15.relationLc1029Part6, Seg15.relationLc1029Part7, Seg15.relationLc1029Part8, Seg15.relationLc1029Part9, Seg15.relationLc1029Part10, Seg15.relationLc1029Part11]
  rw [seg15AccX190_sum, seg15AccY190_sum]
  ring

theorem seg15_lc1030 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1030 rho = 745314955517367977543116352068172160165041384512144938997120069775398163052*seg15AccX190 rho + 2984685174376546547961468152378500336240636975927880788808584620229476031999*seg15AccY190 rho + 2984685174376546547961468152378500336240636975927880788808584620229476031999 + 4478005817476342204330609210929318064960163709550649552489719871068286654464*rho 16130 := by
  simp only [Seg15.relationLc1030, Seg15.relationLc1030Part0, Seg15.relationLc1030Part1, Seg15.relationLc1030Part2, Seg15.relationLc1030Part3, Seg15.relationLc1030Part4, Seg15.relationLc1030Part5, Seg15.relationLc1030Part6, Seg15.relationLc1030Part7, Seg15.relationLc1030Part8, Seg15.relationLc1030Part9, Seg15.relationLc1030Part10, Seg15.relationLc1030Part11]
  rw [seg15AccX190_sum, seg15AccY190_sum]
  ring

theorem seg15_lc1031 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1031 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX190 rho + rho 17457 := by
  simp only [Seg15.relationLc1031, Seg15.relationLc1031Part0, Seg15.relationLc1031Part1, Seg15.relationLc1031Part2, Seg15.relationLc1031Part3, Seg15.relationLc1031Part4, Seg15.relationLc1031Part5]
  rw [seg15AccX190_sum]
  ring

theorem seg15_lc1032 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1032 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY190 rho + rho 17459 := by
  simp only [Seg15.relationLc1032, Seg15.relationLc1032Part0, Seg15.relationLc1032Part1, Seg15.relationLc1032Part2, Seg15.relationLc1032Part3, Seg15.relationLc1032Part4, Seg15.relationLc1032Part5, Seg15.relationLc1032Part6]
  rw [seg15AccY190_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
