import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc816 (rho : Nat -> Seg15.F) :
    Seg15.relationLc816 rho = seg15AccX160 rho + seg15AccY160 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc816, Seg15.relationLc816Part0, Seg15.relationLc816Part1, Seg15.relationLc816Part2, Seg15.relationLc816Part3, Seg15.relationLc816Part4, Seg15.relationLc816Part5, Seg15.relationLc816Part6, Seg15.relationLc816Part7, Seg15.relationLc816Part8, Seg15.relationLc816Part9, Seg15.relationLc816Part10]
  rw [seg15AccX160_sum, seg15AccY160_sum]
  ring

theorem seg15_lc817 (rho : Nat -> Seg15.F) :
    Seg15.relationLc817 rho = 2495102731699009371261614145300526944829738947054201298769580918885850837620*seg15AccX160 rho + 1779026472738516153909413056718403276944291506030252827341601706418091315886*rho 16136 := by
  simp only [Seg15.relationLc817, Seg15.relationLc817Part0, Seg15.relationLc817Part1, Seg15.relationLc817Part2, Seg15.relationLc817Part3, Seg15.relationLc817Part4, Seg15.relationLc817Part5]
  rw [seg15AccX160_sum]
  ring

theorem seg15_lc818 (rho : Nat -> Seg15.F) :
    Seg15.relationLc818 rho = 8407678132673097275589139919008374887080292768567695427353264675232537945589*seg15AccY160 rho + 8407678132673097275589139919008374887080292768567695427353264675232537945589 + 6848053635575179204719656941055680727813810846666181219497964909827707002811*rho 16136 := by
  simp only [Seg15.relationLc818, Seg15.relationLc818Part0, Seg15.relationLc818Part1, Seg15.relationLc818Part2, Seg15.relationLc818Part3, Seg15.relationLc818Part4, Seg15.relationLc818Part5]
  rw [seg15AccY160_sum]
  ring

theorem seg15_lc819 (rho : Nat -> Seg15.F) :
    Seg15.relationLc819 rho = 8084699927864464176199557542900209564940063097058128696354672206366114985152*seg15AccX160 rho + 8407678132673097275589139919008374887080292768567695427353264675232537945589*seg15AccY160 rho + 8407678132673097275589139919008374887080292768567695427353264675232537945589 + 8279812471119722128708173254101980041730197722238809797031954029700640343329*rho 16136 := by
  simp only [Seg15.relationLc819, Seg15.relationLc819Part0, Seg15.relationLc819Part1, Seg15.relationLc819Part2, Seg15.relationLc819Part3, Seg15.relationLc819Part4, Seg15.relationLc819Part5, Seg15.relationLc819Part6, Seg15.relationLc819Part7, Seg15.relationLc819Part8, Seg15.relationLc819Part9, Seg15.relationLc819Part10]
  rw [seg15AccX160_sum, seg15AccY160_sum]
  ring

theorem seg15_lc820 (rho : Nat -> Seg15.F) :
    Seg15.relationLc820 rho = 359761821563906248049267395881336966435836238095935131580561249551294253889*seg15AccX160 rho + 36783616755273148659685019773171644295606566586368400581968780684871293452*seg15AccY160 rho + 36783616755273148659685019773171644295606566586368400581968780684871293452 + 164649278308648295540651684679566489645701612915254030903279426216768895712*rho 16136 := by
  simp only [Seg15.relationLc820, Seg15.relationLc820Part0, Seg15.relationLc820Part1, Seg15.relationLc820Part2, Seg15.relationLc820Part3, Seg15.relationLc820Part4, Seg15.relationLc820Part5, Seg15.relationLc820Part6, Seg15.relationLc820Part7, Seg15.relationLc820Part8, Seg15.relationLc820Part9, Seg15.relationLc820Part10]
  rw [seg15AccX160_sum, seg15AccY160_sum]
  ring

theorem seg15_lc821 (rho : Nat -> Seg15.F) :
    Seg15.relationLc821 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX160 rho + rho 17223 := by
  simp only [Seg15.relationLc821, Seg15.relationLc821Part0, Seg15.relationLc821Part1, Seg15.relationLc821Part2, Seg15.relationLc821Part3, Seg15.relationLc821Part4, Seg15.relationLc821Part5]
  rw [seg15AccX160_sum]
  ring

theorem seg15_lc822 (rho : Nat -> Seg15.F) :
    Seg15.relationLc822 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY160 rho + rho 17225 := by
  simp only [Seg15.relationLc822, Seg15.relationLc822Part0, Seg15.relationLc822Part1, Seg15.relationLc822Part2, Seg15.relationLc822Part3, Seg15.relationLc822Part4, Seg15.relationLc822Part5]
  rw [seg15AccY160_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
