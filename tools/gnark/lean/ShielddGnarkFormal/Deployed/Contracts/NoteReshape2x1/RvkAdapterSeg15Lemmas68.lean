import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1215 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1215 rho = seg15AccX217 rho + seg15AccY217 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc1215, Seg15.relationLc1215Part0, Seg15.relationLc1215Part1, Seg15.relationLc1215Part2, Seg15.relationLc1215Part3, Seg15.relationLc1215Part4, Seg15.relationLc1215Part5, Seg15.relationLc1215Part6, Seg15.relationLc1215Part7, Seg15.relationLc1215Part8, Seg15.relationLc1215Part9, Seg15.relationLc1215Part10, Seg15.relationLc1215Part11, Seg15.relationLc1215Part12, Seg15.relationLc1215Part13]
  rw [seg15AccX217_sum, seg15AccY217_sum]
  ring

theorem seg15_lc1216 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1216 rho = 3647845013221540195000180144391708208516708723557347468147664801839542250871*seg15AccX217 rho + 4971282488306407230903895476128900254670987796347003951409327543348148103236*rho 16130 := by
  simp only [Seg15.relationLc1216, Seg15.relationLc1216Part0, Seg15.relationLc1216Part1, Seg15.relationLc1216Part2, Seg15.relationLc1216Part3, Seg15.relationLc1216Part4, Seg15.relationLc1216Part5, Seg15.relationLc1216Part6]
  rw [seg15AccX217_sum]
  ring

theorem seg15_lc1217 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1217 rho = 7321797565248499399597033149132749385913345298552819616764011964057332335793*seg15AccY217 rho + 7321797565248499399597033149132749385913345298552819616764011964057332335793 + 2169773500175028257771770782874482504945777498476923627076290976547949899032*rho 16130 := by
  simp only [Seg15.relationLc1217, Seg15.relationLc1217Part0, Seg15.relationLc1217Part1, Seg15.relationLc1217Part2, Seg15.relationLc1217Part3, Seg15.relationLc1217Part4, Seg15.relationLc1217Part5, Seg15.relationLc1217Part6]
  rw [seg15AccY217_sum]
  ring

theorem seg15_lc1218 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1218 rho = 5697934753508189495138730686984834008325918422299748238596542021834332860449*seg15AccX217 rho + 7321797565248499399597033149132749385913345298552819616764011964057332335793*seg15AccY217 rho + 7321797565248499399597033149132749385913345298552819616764011964057332335793 + 5548085673560588628418405811515408393776216884330103404665556564860289690116*rho 16130 := by
  simp only [Seg15.relationLc1218, Seg15.relationLc1218Part0, Seg15.relationLc1218Part1, Seg15.relationLc1218Part2, Seg15.relationLc1218Part3, Seg15.relationLc1218Part4, Seg15.relationLc1218Part5, Seg15.relationLc1218Part6, Seg15.relationLc1218Part7, Seg15.relationLc1218Part8, Seg15.relationLc1218Part9, Seg15.relationLc1218Part10, Seg15.relationLc1218Part11, Seg15.relationLc1218Part12, Seg15.relationLc1218Part13]
  rw [seg15AccX217_sum, seg15AccY217_sum]
  ring

theorem seg15_lc1219 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1219 rho = 2746526995920180929110094251796712523049980912854315589338691434083076378592*seg15AccX217 rho + 1122664184179871024651791789648797145462554036601244211171221491860076903248*seg15AccY217 rho + 1122664184179871024651791789648797145462554036601244211171221491860076903248 + 2896376075867781795830419127266138137599682450823960423269676891057119548925*rho 16130 := by
  simp only [Seg15.relationLc1219, Seg15.relationLc1219Part0, Seg15.relationLc1219Part1, Seg15.relationLc1219Part2, Seg15.relationLc1219Part3, Seg15.relationLc1219Part4, Seg15.relationLc1219Part5, Seg15.relationLc1219Part6, Seg15.relationLc1219Part7, Seg15.relationLc1219Part8, Seg15.relationLc1219Part9, Seg15.relationLc1219Part10, Seg15.relationLc1219Part11, Seg15.relationLc1219Part12, Seg15.relationLc1219Part13]
  rw [seg15AccX217_sum, seg15AccY217_sum]
  ring

theorem seg15_lc1220 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1220 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX217 rho + rho 17673 := by
  simp only [Seg15.relationLc1220, Seg15.relationLc1220Part0, Seg15.relationLc1220Part1, Seg15.relationLc1220Part2, Seg15.relationLc1220Part3, Seg15.relationLc1220Part4, Seg15.relationLc1220Part5, Seg15.relationLc1220Part6]
  rw [seg15AccX217_sum]
  ring

theorem seg15_lc1221 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1221 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY217 rho + rho 17675 := by
  simp only [Seg15.relationLc1221, Seg15.relationLc1221Part0, Seg15.relationLc1221Part1, Seg15.relationLc1221Part2, Seg15.relationLc1221Part3, Seg15.relationLc1221Part4, Seg15.relationLc1221Part5, Seg15.relationLc1221Part6]
  rw [seg15AccY217_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
