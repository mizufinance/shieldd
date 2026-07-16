import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1103 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1103 rho = seg15AccX201 rho + seg15AccY201 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1103, Seg15.relationLc1103Part0, Seg15.relationLc1103Part1, Seg15.relationLc1103Part2, Seg15.relationLc1103Part3, Seg15.relationLc1103Part4, Seg15.relationLc1103Part5, Seg15.relationLc1103Part6, Seg15.relationLc1103Part7, Seg15.relationLc1103Part8, Seg15.relationLc1103Part9, Seg15.relationLc1103Part10, Seg15.relationLc1103Part11, Seg15.relationLc1103Part12]
  rw [seg15AccX201_sum, seg15AccY201_sum]
  ring

theorem seg15_lc1104 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1104 rho = 7771082363777087753146312373441150692288717775491566932576390877702374023469*seg15AccX201 rho + 5532580002342148249326876168201717375879855212075595292748425706160903698584*rho 16136 := by
  simp only [Seg15.relationLc1104, Seg15.relationLc1104Part0, Seg15.relationLc1104Part1, Seg15.relationLc1104Part2, Seg15.relationLc1104Part3, Seg15.relationLc1104Part4, Seg15.relationLc1104Part5, Seg15.relationLc1104Part6]
  rw [seg15AccX201_sum]
  ring

theorem seg15_lc1105 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1105 rho = 4558446562394208624286663758240912216818567793319435869030726060012341948788*seg15AccY201 rho + 4558446562394208624286663758240912216818567793319435869030726060012341948788 + 3949003806747971313342296458465229099037428683069361027605799107243267555772*rho 16136 := by
  simp only [Seg15.relationLc1105, Seg15.relationLc1105Part0, Seg15.relationLc1105Part1, Seg15.relationLc1105Part2, Seg15.relationLc1105Part3, Seg15.relationLc1105Part4, Seg15.relationLc1105Part5, Seg15.relationLc1105Part6]
  rw [seg15AccY201_sum]
  ring

theorem seg15_lc1106 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1106 rho = 1187759968262630303751952362269717603441135397511027682878886254944284637993*seg15AccX201 rho + 4558446562394208624286663758240912216818567793319435869030726060012341948788*seg15AccY201 rho + 4558446562394208624286663758240912216818567793319435869030726060012341948788 + 4853702159964689550774172437079807466137824360152061528008258171118634681859*rho 16136 := by
  simp only [Seg15.relationLc1106, Seg15.relationLc1106Part0, Seg15.relationLc1106Part1, Seg15.relationLc1106Part2, Seg15.relationLc1106Part3, Seg15.relationLc1106Part4, Seg15.relationLc1106Part5, Seg15.relationLc1106Part6, Seg15.relationLc1106Part7, Seg15.relationLc1106Part8, Seg15.relationLc1106Part9, Seg15.relationLc1106Part10, Seg15.relationLc1106Part11, Seg15.relationLc1106Part12]
  rw [seg15AccX201_sum, seg15AccY201_sum]
  ring

theorem seg15_lc1107 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1107 rho = 7256701781165740120496872576511828927934763937643036145056347200973124601048*seg15AccX201 rho + 3886015187034161799962161180540634314557331541834627958904507395905067290253*seg15AccY201 rho + 3886015187034161799962161180540634314557331541834627958904507395905067290253 + 3590759589463680873474652501701739065238074975002002299926975284798774557182*rho 16136 := by
  simp only [Seg15.relationLc1107, Seg15.relationLc1107Part0, Seg15.relationLc1107Part1, Seg15.relationLc1107Part2, Seg15.relationLc1107Part3, Seg15.relationLc1107Part4, Seg15.relationLc1107Part5, Seg15.relationLc1107Part6, Seg15.relationLc1107Part7, Seg15.relationLc1107Part8, Seg15.relationLc1107Part9, Seg15.relationLc1107Part10, Seg15.relationLc1107Part11, Seg15.relationLc1107Part12]
  rw [seg15AccX201_sum, seg15AccY201_sum]
  ring

theorem seg15_lc1108 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1108 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX201 rho + rho 17551 := by
  simp only [Seg15.relationLc1108, Seg15.relationLc1108Part0, Seg15.relationLc1108Part1, Seg15.relationLc1108Part2, Seg15.relationLc1108Part3, Seg15.relationLc1108Part4, Seg15.relationLc1108Part5, Seg15.relationLc1108Part6]
  rw [seg15AccX201_sum]
  ring

theorem seg15_lc1109 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1109 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY201 rho + rho 17553 := by
  simp only [Seg15.relationLc1109, Seg15.relationLc1109Part0, Seg15.relationLc1109Part1, Seg15.relationLc1109Part2, Seg15.relationLc1109Part3, Seg15.relationLc1109Part4, Seg15.relationLc1109Part5, Seg15.relationLc1109Part6]
  rw [seg15AccY201_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
