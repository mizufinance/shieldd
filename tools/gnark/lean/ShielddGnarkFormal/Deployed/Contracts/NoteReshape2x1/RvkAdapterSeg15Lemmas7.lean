import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc788 (rho : Nat -> Seg15.F) :
    Seg15.relationLc788 rho = seg15AccX156 rho + seg15AccY156 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc788, Seg15.relationLc788Part0, Seg15.relationLc788Part1, Seg15.relationLc788Part2, Seg15.relationLc788Part3, Seg15.relationLc788Part4, Seg15.relationLc788Part5, Seg15.relationLc788Part6, Seg15.relationLc788Part7, Seg15.relationLc788Part8, Seg15.relationLc788Part9]
  rw [seg15AccX156_sum, seg15AccY156_sum]
  ring

theorem seg15_lc789 (rho : Nat -> Seg15.F) :
    Seg15.relationLc789 rho = 1999964692048324961697239574371922163558405393968880632862001941840419525236*seg15AccX156 rho + 2977088419243879867354184368545546907918077720801643958738476806101681393830*rho 16136 := by
  simp only [Seg15.relationLc789, Seg15.relationLc789Part0, Seg15.relationLc789Part1, Seg15.relationLc789Part2, Seg15.relationLc789Part3, Seg15.relationLc789Part4]
  rw [seg15AccX156_sum]
  ring

theorem seg15_lc790 (rho : Nat -> Seg15.F) :
    Seg15.relationLc790 rho = 2139803059408643861427175686180858835252725442320075505016370120577874875581*seg15AccY156 rho + 2139803059408643861427175686180858835252725442320075505016370120577874875581 + 7530523190265728170221051900065334925945862915140933852361276038313370483099*rho 16136 := by
  simp only [Seg15.relationLc790, Seg15.relationLc790Part0, Seg15.relationLc790Part1, Seg15.relationLc790Part2, Seg15.relationLc790Part3, Seg15.relationLc790Part4]
  rw [seg15AccY156_sum]
  ring

theorem seg15_lc791 (rho : Nat -> Seg15.F) :
    Seg15.relationLc791 rho = 8255046511338638261426175863553882432742995412811625079286860773672939391729*seg15AccX156 rho + 2139803059408643861427175686180858835252725442320075505016370120577874875581*seg15AccY156 rho + 2139803059408643861427175686180858835252725442320075505016370120577874875581 + 7176511421395102826291145715736731528866478228665010495132200840665105242462*rho 16136 := by
  simp only [Seg15.relationLc791, Seg15.relationLc791Part0, Seg15.relationLc791Part1, Seg15.relationLc791Part2, Seg15.relationLc791Part3, Seg15.relationLc791Part4, Seg15.relationLc791Part5, Seg15.relationLc791Part6, Seg15.relationLc791Part7, Seg15.relationLc791Part8, Seg15.relationLc791Part9]
  rw [seg15AccX156_sum, seg15AccY156_sum]
  ring

theorem seg15_lc792 (rho : Nat -> Seg15.F) :
    Seg15.relationLc792 rho = 189415238089732162822649075227664098632903922342438748648372682244469847312*seg15AccX156 rho + 6304658690019726562821649252600687696123173892833988322918863335339534363460*seg15AccY156 rho + 6304658690019726562821649252600687696123173892833988322918863335339534363460 + 1267950328033267597957679223044815002509421106489053332803032615252303996579*rho 16136 := by
  simp only [Seg15.relationLc792, Seg15.relationLc792Part0, Seg15.relationLc792Part1, Seg15.relationLc792Part2, Seg15.relationLc792Part3, Seg15.relationLc792Part4, Seg15.relationLc792Part5, Seg15.relationLc792Part6, Seg15.relationLc792Part7, Seg15.relationLc792Part8, Seg15.relationLc792Part9]
  rw [seg15AccX156_sum, seg15AccY156_sum]
  ring

theorem seg15_lc793 (rho : Nat -> Seg15.F) :
    Seg15.relationLc793 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX156 rho + rho 17191 := by
  simp only [Seg15.relationLc793, Seg15.relationLc793Part0, Seg15.relationLc793Part1, Seg15.relationLc793Part2, Seg15.relationLc793Part3, Seg15.relationLc793Part4]
  rw [seg15AccX156_sum]
  ring

theorem seg15_lc794 (rho : Nat -> Seg15.F) :
    Seg15.relationLc794 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY156 rho + rho 17193 := by
  simp only [Seg15.relationLc794, Seg15.relationLc794Part0, Seg15.relationLc794Part1, Seg15.relationLc794Part2, Seg15.relationLc794Part3, Seg15.relationLc794Part4]
  rw [seg15AccY156_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
