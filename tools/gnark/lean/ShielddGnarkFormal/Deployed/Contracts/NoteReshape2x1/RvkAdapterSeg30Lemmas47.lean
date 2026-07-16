import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1068 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1068 rho = seg30AccX196 rho + seg30AccY196 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1068, Seg30.relationLc1068Part0, Seg30.relationLc1068Part1, Seg30.relationLc1068Part2, Seg30.relationLc1068Part3, Seg30.relationLc1068Part4, Seg30.relationLc1068Part5, Seg30.relationLc1068Part6, Seg30.relationLc1068Part7, Seg30.relationLc1068Part8, Seg30.relationLc1068Part9, Seg30.relationLc1068Part10, Seg30.relationLc1068Part11, Seg30.relationLc1068Part12]
  rw [seg30AccX196_sum, seg30AccY196_sum]
  ring

theorem seg30_lc1069 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1069 rho = 3802704878817434423711436974410538526526545929301785435357045731052713142490*seg30AccX196 rho + 3859640395529244198310709622310588233414407003122503664126280519304497179772*rho 28317 := by
  simp only [Seg30.relationLc1069, Seg30.relationLc1069Part0, Seg30.relationLc1069Part1, Seg30.relationLc1069Part2, Seg30.relationLc1069Part3, Seg30.relationLc1069Part4, Seg30.relationLc1069Part5, Seg30.relationLc1069Part6]
  rw [seg30AccX196_sum]
  ring

theorem seg30_lc1070 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1070 rho = 2082226801942639214149189228798694336008558896827557728542685557227694094802*seg30AccY196 rho + 2082226801942639214149189228798694336008558896827557728542685557227694094802 + 4365931281007279173684731796343961725067336835824279134039608802990384612140*rho 28317 := by
  simp only [Seg30.relationLc1070, Seg30.relationLc1070Part0, Seg30.relationLc1070Part1, Seg30.relationLc1070Part2, Seg30.relationLc1070Part3, Seg30.relationLc1070Part4, Seg30.relationLc1070Part5, Seg30.relationLc1070Part6]
  rw [seg30AccY196_sum]
  ring

theorem seg30_lc1071 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1071 rho = 8370248653646924357704300994268904618823558144780062524420207220373312139964*seg30AccX196 rho + 2082226801942639214149189228798694336008558896827557728542685557227694094802*seg30AccY196 rho + 2082226801942639214149189228798694336008558896827557728542685557227694094802 + 2374192920548193153065366860319820020784780788501629347328686865370454691499*rho 28317 := by
  simp only [Seg30.relationLc1071, Seg30.relationLc1071Part0, Seg30.relationLc1071Part1, Seg30.relationLc1071Part2, Seg30.relationLc1071Part3, Seg30.relationLc1071Part4, Seg30.relationLc1071Part5, Seg30.relationLc1071Part6, Seg30.relationLc1071Part7, Seg30.relationLc1071Part8, Seg30.relationLc1071Part9, Seg30.relationLc1071Part10, Seg30.relationLc1071Part11, Seg30.relationLc1071Part12]
  rw [seg30AccX196_sum, seg30AccY196_sum]
  ring

theorem seg30_lc1072 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1072 rho = 74213095781446066544523944512641912552341190374001303515026235544097099077*seg30AccX196 rho + 6362234947485731210099635709982852195367340438326506099392547898689715144239*seg30AccY196 rho + 6362234947485731210099635709982852195367340438326506099392547898689715144239 + 6070268828880177271183458078461726510591118546652434480606546590546954547542*rho 28317 := by
  simp only [Seg30.relationLc1072, Seg30.relationLc1072Part0, Seg30.relationLc1072Part1, Seg30.relationLc1072Part2, Seg30.relationLc1072Part3, Seg30.relationLc1072Part4, Seg30.relationLc1072Part5, Seg30.relationLc1072Part6, Seg30.relationLc1072Part7, Seg30.relationLc1072Part8, Seg30.relationLc1072Part9, Seg30.relationLc1072Part10, Seg30.relationLc1072Part11, Seg30.relationLc1072Part12]
  rw [seg30AccX196_sum, seg30AccY196_sum]
  ring

theorem seg30_lc1073 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1073 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX196 rho + rho 29692 := by
  simp only [Seg30.relationLc1073, Seg30.relationLc1073Part0, Seg30.relationLc1073Part1, Seg30.relationLc1073Part2, Seg30.relationLc1073Part3, Seg30.relationLc1073Part4, Seg30.relationLc1073Part5, Seg30.relationLc1073Part6]
  rw [seg30AccX196_sum]
  ring

theorem seg30_lc1074 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1074 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY196 rho + rho 29694 := by
  simp only [Seg30.relationLc1074, Seg30.relationLc1074Part0, Seg30.relationLc1074Part1, Seg30.relationLc1074Part2, Seg30.relationLc1074Part3, Seg30.relationLc1074Part4, Seg30.relationLc1074Part5, Seg30.relationLc1074Part6]
  rw [seg30AccY196_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
