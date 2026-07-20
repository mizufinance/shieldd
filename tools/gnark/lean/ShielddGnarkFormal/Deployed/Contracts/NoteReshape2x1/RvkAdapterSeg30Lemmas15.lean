import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc844 (rho : Nat -> Seg30.F) :
    Seg30.relationLc844 rho = seg30AccX164 rho + seg30AccY164 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc844, Seg30.relationLc844Part0, Seg30.relationLc844Part1, Seg30.relationLc844Part2, Seg30.relationLc844Part3, Seg30.relationLc844Part4, Seg30.relationLc844Part5, Seg30.relationLc844Part6, Seg30.relationLc844Part7, Seg30.relationLc844Part8, Seg30.relationLc844Part9, Seg30.relationLc844Part10]
  rw [seg30AccX164_sum, seg30AccY164_sum]
  ring

theorem seg30_lc845 (rho : Nat -> Seg30.F) :
    Seg30.relationLc845 rho = 2196420425394647766284261780638306867698174832584544513782031995063991701139*seg30AccX164 rho + 3195273050439365200292363647550323698338958477189858332724984521343866531348*rho 28311 := by
  simp only [Seg30.relationLc845, Seg30.relationLc845Part0, Seg30.relationLc845Part1, Seg30.relationLc845Part2, Seg30.relationLc845Part3, Seg30.relationLc845Part4, Seg30.relationLc845Part5]
  rw [seg30AccX164_sum]
  ring

theorem seg30_lc846 (rho : Nat -> Seg30.F) :
    Seg30.relationLc846 rho = 5115523682525406331906309721636962668016666306320314209648996095923307323817*seg30AccY164 rho + 5115523682525406331906309721636962668016666306320314209648996095923307323817 + 6451616643860153436487649111689156422212632719667752052847634276420469943598*rho 28311 := by
  simp only [Seg30.relationLc846, Seg30.relationLc846Part0, Seg30.relationLc846Part1, Seg30.relationLc846Part2, Seg30.relationLc846Part3, Seg30.relationLc846Part4, Seg30.relationLc846Part5]
  rw [seg30AccY164_sum]
  ring

theorem seg30_lc847 (rho : Nat -> Seg30.F) :
    Seg30.relationLc847 rho = 6002136973336016533806193778664223339864863968026600325418976584524906199246*seg30AccX164 rho + 5115523682525406331906309721636962668016666306320314209648996095923307323817*seg30AccY164 rho + 5115523682525406331906309721636962668016666306320314209648996095923307323817 + 2916678265847426120541117769778826717316183298783044709582044955925872518621*rho 28311 := by
  simp only [Seg30.relationLc847, Seg30.relationLc847Part0, Seg30.relationLc847Part1, Seg30.relationLc847Part2, Seg30.relationLc847Part3, Seg30.relationLc847Part4, Seg30.relationLc847Part5, Seg30.relationLc847Part6, Seg30.relationLc847Part7, Seg30.relationLc847Part8, Seg30.relationLc847Part9, Seg30.relationLc847Part10]
  rw [seg30AccX164_sum, seg30AccY164_sum]
  ring

theorem seg30_lc848 (rho : Nat -> Seg30.F) :
    Seg30.relationLc848 rho = 2442324776092353890442631160117323191511035367127463502516256871392503039795*seg30AccX164 rho + 3328938066902964092342515217144583863359233028833749618286237359994101915224*seg30AccY164 rho + 3328938066902964092342515217144583863359233028833749618286237359994101915224 + 5527783483580944303707707169002719814059716036371019118353188499991536720420*rho 28311 := by
  simp only [Seg30.relationLc848, Seg30.relationLc848Part0, Seg30.relationLc848Part1, Seg30.relationLc848Part2, Seg30.relationLc848Part3, Seg30.relationLc848Part4, Seg30.relationLc848Part5, Seg30.relationLc848Part6, Seg30.relationLc848Part7, Seg30.relationLc848Part8, Seg30.relationLc848Part9, Seg30.relationLc848Part10]
  rw [seg30AccX164_sum, seg30AccY164_sum]
  ring

theorem seg30_lc849 (rho : Nat -> Seg30.F) :
    Seg30.relationLc849 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX164 rho + rho 29430 := by
  simp only [Seg30.relationLc849, Seg30.relationLc849Part0, Seg30.relationLc849Part1, Seg30.relationLc849Part2, Seg30.relationLc849Part3, Seg30.relationLc849Part4, Seg30.relationLc849Part5]
  rw [seg30AccX164_sum]
  ring

theorem seg30_lc850 (rho : Nat -> Seg30.F) :
    Seg30.relationLc850 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY164 rho + rho 29432 := by
  simp only [Seg30.relationLc850, Seg30.relationLc850Part0, Seg30.relationLc850Part1, Seg30.relationLc850Part2, Seg30.relationLc850Part3, Seg30.relationLc850Part4, Seg30.relationLc850Part5]
  rw [seg30AccY164_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
