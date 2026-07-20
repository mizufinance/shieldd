import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc788 (rho : Nat -> Seg30.F) :
    Seg30.relationLc788 rho = seg30AccX156 rho + seg30AccY156 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc788, Seg30.relationLc788Part0, Seg30.relationLc788Part1, Seg30.relationLc788Part2, Seg30.relationLc788Part3, Seg30.relationLc788Part4, Seg30.relationLc788Part5, Seg30.relationLc788Part6, Seg30.relationLc788Part7, Seg30.relationLc788Part8, Seg30.relationLc788Part9]
  rw [seg30AccX156_sum, seg30AccY156_sum]
  ring

theorem seg30_lc789 (rho : Nat -> Seg30.F) :
    Seg30.relationLc789 rho = 1999964692048324961697239574371922163558405393968880632862001941840419525236*seg30AccX156 rho + 2977088419243879867354184368545546907918077720801643958738476806101681393830*rho 28311 := by
  simp only [Seg30.relationLc789, Seg30.relationLc789Part0, Seg30.relationLc789Part1, Seg30.relationLc789Part2, Seg30.relationLc789Part3, Seg30.relationLc789Part4]
  rw [seg30AccX156_sum]
  ring

theorem seg30_lc790 (rho : Nat -> Seg30.F) :
    Seg30.relationLc790 rho = 2139803059408643861427175686180858835252725442320075505016370120577874875581*seg30AccY156 rho + 2139803059408643861427175686180858835252725442320075505016370120577874875581 + 7530523190265728170221051900065334925945862915140933852361276038313370483099*rho 28311 := by
  simp only [Seg30.relationLc790, Seg30.relationLc790Part0, Seg30.relationLc790Part1, Seg30.relationLc790Part2, Seg30.relationLc790Part3, Seg30.relationLc790Part4]
  rw [seg30AccY156_sum]
  ring

theorem seg30_lc791 (rho : Nat -> Seg30.F) :
    Seg30.relationLc791 rho = 8255046511338638261426175863553882432742995412811625079286860773672939391729*seg30AccX156 rho + 2139803059408643861427175686180858835252725442320075505016370120577874875581*seg30AccY156 rho + 2139803059408643861427175686180858835252725442320075505016370120577874875581 + 7176511421395102826291145715736731528866478228665010495132200840665105242462*rho 28311 := by
  simp only [Seg30.relationLc791, Seg30.relationLc791Part0, Seg30.relationLc791Part1, Seg30.relationLc791Part2, Seg30.relationLc791Part3, Seg30.relationLc791Part4, Seg30.relationLc791Part5, Seg30.relationLc791Part6, Seg30.relationLc791Part7, Seg30.relationLc791Part8, Seg30.relationLc791Part9]
  rw [seg30AccX156_sum, seg30AccY156_sum]
  ring

theorem seg30_lc792 (rho : Nat -> Seg30.F) :
    Seg30.relationLc792 rho = 189415238089732162822649075227664098632903922342438748648372682244469847312*seg30AccX156 rho + 6304658690019726562821649252600687696123173892833988322918863335339534363460*seg30AccY156 rho + 6304658690019726562821649252600687696123173892833988322918863335339534363460 + 1267950328033267597957679223044815002509421106489053332803032615252303996579*rho 28311 := by
  simp only [Seg30.relationLc792, Seg30.relationLc792Part0, Seg30.relationLc792Part1, Seg30.relationLc792Part2, Seg30.relationLc792Part3, Seg30.relationLc792Part4, Seg30.relationLc792Part5, Seg30.relationLc792Part6, Seg30.relationLc792Part7, Seg30.relationLc792Part8, Seg30.relationLc792Part9]
  rw [seg30AccX156_sum, seg30AccY156_sum]
  ring

theorem seg30_lc793 (rho : Nat -> Seg30.F) :
    Seg30.relationLc793 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX156 rho + rho 29366 := by
  simp only [Seg30.relationLc793, Seg30.relationLc793Part0, Seg30.relationLc793Part1, Seg30.relationLc793Part2, Seg30.relationLc793Part3, Seg30.relationLc793Part4]
  rw [seg30AccX156_sum]
  ring

theorem seg30_lc794 (rho : Nat -> Seg30.F) :
    Seg30.relationLc794 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY156 rho + rho 29368 := by
  simp only [Seg30.relationLc794, Seg30.relationLc794Part0, Seg30.relationLc794Part1, Seg30.relationLc794Part2, Seg30.relationLc794Part3, Seg30.relationLc794Part4]
  rw [seg30AccY156_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
