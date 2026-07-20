import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1334 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1334 rho = seg15AccX234 rho + seg15AccY234 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc1334, Seg15.relationLc1334Part0, Seg15.relationLc1334Part1, Seg15.relationLc1334Part2, Seg15.relationLc1334Part3, Seg15.relationLc1334Part4, Seg15.relationLc1334Part5, Seg15.relationLc1334Part6, Seg15.relationLc1334Part7, Seg15.relationLc1334Part8, Seg15.relationLc1334Part9, Seg15.relationLc1334Part10, Seg15.relationLc1334Part11, Seg15.relationLc1334Part12, Seg15.relationLc1334Part13, Seg15.relationLc1334Part14]
  rw [seg15AccX234_sum, seg15AccY234_sum]
  ring

theorem seg15_lc1335 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1335 rho = 6702953404390736707495812053445034260304431226855294397131934185910875232896*seg15AccX234 rho + 2452873964476630092567945718208053877901301266033194735109226827918502899745*rho 16130 := by
  simp only [Seg15.relationLc1335, Seg15.relationLc1335Part0, Seg15.relationLc1335Part1, Seg15.relationLc1335Part2, Seg15.relationLc1335Part3, Seg15.relationLc1335Part4, Seg15.relationLc1335Part5, Seg15.relationLc1335Part6, Seg15.relationLc1335Part7]
  rw [seg15AccX234_sum]
  ring

theorem seg15_lc1336 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1336 rho = 3858729688629762977328716795123717803175545332224895722123585236410054509531*seg15AccY234 rho + 3858729688629762977328716795123717803175545332224895722123585236410054509531 + 337404684653093188052153735361213699914087648575031015260095925233825252916*rho 16130 := by
  simp only [Seg15.relationLc1336, Seg15.relationLc1336Part0, Seg15.relationLc1336Part1, Seg15.relationLc1336Part2, Seg15.relationLc1336Part3, Seg15.relationLc1336Part4, Seg15.relationLc1336Part5, Seg15.relationLc1336Part6, Seg15.relationLc1336Part7]
  rw [seg15AccY234_sum]
  ring

theorem seg15_lc1337 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1337 rho = 2733181755245252777622839383397224758495384998898502368185983124997424595093*seg15AccX234 rho + 3858729688629762977328716795123717803175545332224895722123585236410054509531*seg15AccY234 rho + 3858729688629762977328716795123717803175545332224895722123585236410054509531 + 3530396472740374106484701244731201847120038771386012175881461643037731195943*rho 16130 := by
  simp only [Seg15.relationLc1337, Seg15.relationLc1337Part0, Seg15.relationLc1337Part1, Seg15.relationLc1337Part2, Seg15.relationLc1337Part3, Seg15.relationLc1337Part4, Seg15.relationLc1337Part5, Seg15.relationLc1337Part6, Seg15.relationLc1337Part7, Seg15.relationLc1337Part8, Seg15.relationLc1337Part9, Seg15.relationLc1337Part10, Seg15.relationLc1337Part11, Seg15.relationLc1337Part12, Seg15.relationLc1337Part13, Seg15.relationLc1337Part14]
  rw [seg15AccX234_sum, seg15AccY234_sum]
  ring

theorem seg15_lc1338 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1338 rho = 5711279994183117646625985555384321772880514336255561459749250330919984643948*seg15AccX234 rho + 4585732060798607446920108143657828728200354002929168105811648219507354729510*seg15AccY234 rho + 4585732060798607446920108143657828728200354002929168105811648219507354729510 + 4914065276687996317764123694050344684255860563768051652053771812879678043098*rho 16130 := by
  simp only [Seg15.relationLc1338, Seg15.relationLc1338Part0, Seg15.relationLc1338Part1, Seg15.relationLc1338Part2, Seg15.relationLc1338Part3, Seg15.relationLc1338Part4, Seg15.relationLc1338Part5, Seg15.relationLc1338Part6, Seg15.relationLc1338Part7, Seg15.relationLc1338Part8, Seg15.relationLc1338Part9, Seg15.relationLc1338Part10, Seg15.relationLc1338Part11, Seg15.relationLc1338Part12, Seg15.relationLc1338Part13, Seg15.relationLc1338Part14]
  rw [seg15AccX234_sum, seg15AccY234_sum]
  ring

theorem seg15_lc1339 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1339 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX234 rho + rho 17809 := by
  simp only [Seg15.relationLc1339, Seg15.relationLc1339Part0, Seg15.relationLc1339Part1, Seg15.relationLc1339Part2, Seg15.relationLc1339Part3, Seg15.relationLc1339Part4, Seg15.relationLc1339Part5, Seg15.relationLc1339Part6, Seg15.relationLc1339Part7]
  rw [seg15AccX234_sum]
  ring

theorem seg15_lc1340 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1340 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY234 rho + rho 17811 := by
  simp only [Seg15.relationLc1340, Seg15.relationLc1340Part0, Seg15.relationLc1340Part1, Seg15.relationLc1340Part2, Seg15.relationLc1340Part3, Seg15.relationLc1340Part4, Seg15.relationLc1340Part5, Seg15.relationLc1340Part6, Seg15.relationLc1340Part7]
  rw [seg15AccY234_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
