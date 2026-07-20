import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1082 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1082 rho = seg30AccX198 rho + seg30AccY198 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc1082, Seg30.relationLc1082Part0, Seg30.relationLc1082Part1, Seg30.relationLc1082Part2, Seg30.relationLc1082Part3, Seg30.relationLc1082Part4, Seg30.relationLc1082Part5, Seg30.relationLc1082Part6, Seg30.relationLc1082Part7, Seg30.relationLc1082Part8, Seg30.relationLc1082Part9, Seg30.relationLc1082Part10, Seg30.relationLc1082Part11, Seg30.relationLc1082Part12]
  rw [seg30AccX198_sum, seg30AccY198_sum]
  ring

theorem seg30_lc1083 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1083 rho = 5395489779347166496441878133437943551276689582318615283329753273729667076491*seg30AccX198 rho + 3455123595394709068728375359700453623954053059499181797974481778307175545740*rho 28311 := by
  simp only [Seg30.relationLc1083, Seg30.relationLc1083Part0, Seg30.relationLc1083Part1, Seg30.relationLc1083Part2, Seg30.relationLc1083Part3, Seg30.relationLc1083Part4, Seg30.relationLc1083Part5, Seg30.relationLc1083Part6]
  rw [seg30AccX198_sum]
  ring

theorem seg30_lc1084 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1084 rho = 5866909752053573440721091521294193006589985270360885180740394909153523547757*seg30AccY198 rho + 5866909752053573440721091521294193006589985270360885180740394909153523547757 + 7921956495604143909729635272667358866033647565741482052006931585555957659688*rho 28311 := by
  simp only [Seg30.relationLc1084, Seg30.relationLc1084Part0, Seg30.relationLc1084Part1, Seg30.relationLc1084Part2, Seg30.relationLc1084Part3, Seg30.relationLc1084Part4, Seg30.relationLc1084Part5, Seg30.relationLc1084Part6]
  rw [seg30AccY198_sum]
  ring

theorem seg30_lc1085 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1085 rho = 6861338835775097049852055040683003353706631465756501572008074364149305508005*seg30AccX198 rho + 5866909752053573440721091521294193006589985270360885180740394909153523547757*seg30AccY198 rho + 5866909752053573440721091521294193006589985270360885180740394909153523547757 + 3900729970005987560366732024886178791546403245904607286498548116080007736009*rho 28311 := by
  simp only [Seg30.relationLc1085, Seg30.relationLc1085Part0, Seg30.relationLc1085Part1, Seg30.relationLc1085Part2, Seg30.relationLc1085Part3, Seg30.relationLc1085Part4, Seg30.relationLc1085Part5, Seg30.relationLc1085Part6, Seg30.relationLc1085Part7, Seg30.relationLc1085Part8, Seg30.relationLc1085Part9, Seg30.relationLc1085Part10, Seg30.relationLc1085Part11, Seg30.relationLc1085Part12]
  rw [seg30AccX198_sum, seg30AccY198_sum]
  ring

theorem seg30_lc1086 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1086 rho = 1583122913653273374396769898098543177669267869397562255927159091768103731036*seg30AccX198 rho + 2577551997374796983527733417487353524785914064793178647194838546763885691284*seg30AccY198 rho + 2577551997374796983527733417487353524785914064793178647194838546763885691284 + 4543731779422382863882092913895367739829496089249456541436685339837401503032*rho 28311 := by
  simp only [Seg30.relationLc1086, Seg30.relationLc1086Part0, Seg30.relationLc1086Part1, Seg30.relationLc1086Part2, Seg30.relationLc1086Part3, Seg30.relationLc1086Part4, Seg30.relationLc1086Part5, Seg30.relationLc1086Part6, Seg30.relationLc1086Part7, Seg30.relationLc1086Part8, Seg30.relationLc1086Part9, Seg30.relationLc1086Part10, Seg30.relationLc1086Part11, Seg30.relationLc1086Part12]
  rw [seg30AccX198_sum, seg30AccY198_sum]
  ring

theorem seg30_lc1087 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1087 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX198 rho + rho 29702 := by
  simp only [Seg30.relationLc1087, Seg30.relationLc1087Part0, Seg30.relationLc1087Part1, Seg30.relationLc1087Part2, Seg30.relationLc1087Part3, Seg30.relationLc1087Part4, Seg30.relationLc1087Part5, Seg30.relationLc1087Part6]
  rw [seg30AccX198_sum]
  ring

theorem seg30_lc1088 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1088 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY198 rho + rho 29704 := by
  simp only [Seg30.relationLc1088, Seg30.relationLc1088Part0, Seg30.relationLc1088Part1, Seg30.relationLc1088Part2, Seg30.relationLc1088Part3, Seg30.relationLc1088Part4, Seg30.relationLc1088Part5, Seg30.relationLc1088Part6]
  rw [seg30AccY198_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
