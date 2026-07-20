import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1187 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1187 rho = seg15AccX213 rho + seg15AccY213 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc1187, Seg15.relationLc1187Part0, Seg15.relationLc1187Part1, Seg15.relationLc1187Part2, Seg15.relationLc1187Part3, Seg15.relationLc1187Part4, Seg15.relationLc1187Part5, Seg15.relationLc1187Part6, Seg15.relationLc1187Part7, Seg15.relationLc1187Part8, Seg15.relationLc1187Part9, Seg15.relationLc1187Part10, Seg15.relationLc1187Part11, Seg15.relationLc1187Part12, Seg15.relationLc1187Part13]
  rw [seg15AccX213_sum, seg15AccY213_sum]
  ring

theorem seg15_lc1188 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1188 rho = 4850227687254138224780847103457061939368954313073617365555607718057132609262*seg15AccX213 rho + 3057446555327645110785219752153912666255960471678605788016472176197507522240*rho 16130 := by
  simp only [Seg15.relationLc1188, Seg15.relationLc1188Part0, Seg15.relationLc1188Part1, Seg15.relationLc1188Part2, Seg15.relationLc1188Part3, Seg15.relationLc1188Part4, Seg15.relationLc1188Part5, Seg15.relationLc1188Part6]
  rw [seg15AccX213_sum]
  ring

theorem seg15_lc1189 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1189 rho = 2186001308626388964314917732041512555837490566337618110444932455301521128435*seg15AccY213 rho + 2186001308626388964314917732041512555837490566337618110444932455301521128435 + 2148799930174498616858606625598493469250246591036380349541407709988116596773*rho 16130 := by
  simp only [Seg15.relationLc1189, Seg15.relationLc1189Part0, Seg15.relationLc1189Part1, Seg15.relationLc1189Part2, Seg15.relationLc1189Part3, Seg15.relationLc1189Part4, Seg15.relationLc1189Part5, Seg15.relationLc1189Part6]
  rw [seg15AccY213_sum]
  ring

theorem seg15_lc1190 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1190 rho = 5052629132374816118782657236505035300938635899681054933612883966421984649969*seg15AccX213 rho + 2186001308626388964314917732041512555837490566337618110444932455301521128435*seg15AccY213 rho + 2186001308626388964314917732041512555837490566337618110444932455301521128435 + 8103702602414735839222321401949651372095967062519278250663573791841899842943*rho 16130 := by
  simp only [Seg15.relationLc1190, Seg15.relationLc1190Part0, Seg15.relationLc1190Part1, Seg15.relationLc1190Part2, Seg15.relationLc1190Part3, Seg15.relationLc1190Part4, Seg15.relationLc1190Part5, Seg15.relationLc1190Part6, Seg15.relationLc1190Part7, Seg15.relationLc1190Part8, Seg15.relationLc1190Part9, Seg15.relationLc1190Part10, Seg15.relationLc1190Part11, Seg15.relationLc1190Part12, Seg15.relationLc1190Part13]
  rw [seg15AccX213_sum, seg15AccY213_sum]
  ring

theorem seg15_lc1191 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1191 rho = 3391832617053554305466167702276511230437263435473008894322349489495424589072*seg15AccX213 rho + 6258460440801981459933907206740033975538408768816445717490301000615888110606*seg15AccY213 rho + 6258460440801981459933907206740033975538408768816445717490301000615888110606 + 340759147013634585026503536831895159279932272634785577271659664075509396098*rho 16130 := by
  simp only [Seg15.relationLc1191, Seg15.relationLc1191Part0, Seg15.relationLc1191Part1, Seg15.relationLc1191Part2, Seg15.relationLc1191Part3, Seg15.relationLc1191Part4, Seg15.relationLc1191Part5, Seg15.relationLc1191Part6, Seg15.relationLc1191Part7, Seg15.relationLc1191Part8, Seg15.relationLc1191Part9, Seg15.relationLc1191Part10, Seg15.relationLc1191Part11, Seg15.relationLc1191Part12, Seg15.relationLc1191Part13]
  rw [seg15AccX213_sum, seg15AccY213_sum]
  ring

theorem seg15_lc1192 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1192 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX213 rho + rho 17641 := by
  simp only [Seg15.relationLc1192, Seg15.relationLc1192Part0, Seg15.relationLc1192Part1, Seg15.relationLc1192Part2, Seg15.relationLc1192Part3, Seg15.relationLc1192Part4, Seg15.relationLc1192Part5, Seg15.relationLc1192Part6]
  rw [seg15AccX213_sum]
  ring

theorem seg15_lc1193 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1193 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY213 rho + rho 17643 := by
  simp only [Seg15.relationLc1193, Seg15.relationLc1193Part0, Seg15.relationLc1193Part1, Seg15.relationLc1193Part2, Seg15.relationLc1193Part3, Seg15.relationLc1193Part4, Seg15.relationLc1193Part5, Seg15.relationLc1193Part6]
  rw [seg15AccY213_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
