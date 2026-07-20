import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1257 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1257 rho = seg30AccX223 rho + seg30AccY223 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc1257, Seg30.relationLc1257Part0, Seg30.relationLc1257Part1, Seg30.relationLc1257Part2, Seg30.relationLc1257Part3, Seg30.relationLc1257Part4, Seg30.relationLc1257Part5, Seg30.relationLc1257Part6, Seg30.relationLc1257Part7, Seg30.relationLc1257Part8, Seg30.relationLc1257Part9, Seg30.relationLc1257Part10, Seg30.relationLc1257Part11, Seg30.relationLc1257Part12, Seg30.relationLc1257Part13]
  rw [seg30AccX223_sum, seg30AccY223_sum]
  ring

theorem seg30_lc1258 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1258 rho = 8430879408160093330160722625733046182942582392288172093642470246427173150924*seg30AccX223 rho + 137488558884457205232673999167580192163634451127116374232054679488272803951*rho 28311 := by
  simp only [Seg30.relationLc1258, Seg30.relationLc1258Part0, Seg30.relationLc1258Part1, Seg30.relationLc1258Part2, Seg30.relationLc1258Part3, Seg30.relationLc1258Part4, Seg30.relationLc1258Part5, Seg30.relationLc1258Part6]
  rw [seg30AccX223_sum]
  ring

theorem seg30_lc1259 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1259 rho = 5488990425375250677312158644956143720864801916199029913146988551927765366148*seg30AccY223 rho + 5488990425375250677312158644956143720864801916199029913146988551927765366148 + 4696590780626708679326410096169400110649612865425230674289355738983321282676*rho 28311 := by
  simp only [Seg30.relationLc1259, Seg30.relationLc1259Part0, Seg30.relationLc1259Part1, Seg30.relationLc1259Part2, Seg30.relationLc1259Part3, Seg30.relationLc1259Part4, Seg30.relationLc1259Part5, Seg30.relationLc1259Part6, Seg30.relationLc1259Part7]
  rw [seg30AccY223_sum]
  ring

theorem seg30_lc1260 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1260 rho = 2378756493353947353174995670503160409749240985525734003918765609988819935894*seg30AccX223 rho + 5488990425375250677312158644956143720864801916199029913146988551927765366148*seg30AccY223 rho + 5488990425375250677312158644956143720864801916199029913146988551927765366148 + 875524338087914269282414393648643232728828106502861215033072362763655557100*rho 28311 := by
  simp only [Seg30.relationLc1260, Seg30.relationLc1260Part0, Seg30.relationLc1260Part1, Seg30.relationLc1260Part2, Seg30.relationLc1260Part3, Seg30.relationLc1260Part4, Seg30.relationLc1260Part5, Seg30.relationLc1260Part6, Seg30.relationLc1260Part7, Seg30.relationLc1260Part8, Seg30.relationLc1260Part9, Seg30.relationLc1260Part10, Seg30.relationLc1260Part11, Seg30.relationLc1260Part12, Seg30.relationLc1260Part13]
  rw [seg30AccX223_sum, seg30AccY223_sum]
  ring

theorem seg30_lc1261 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1261 rho = 6065705256074423071073829268278386121626658349628329824016467845928589303147*seg30AccX223 rho + 2955471324053119746936666293825402810511097418955033914788244903989643872893*seg30AccY223 rho + 2955471324053119746936666293825402810511097418955033914788244903989643872893 + 7568937411340456154966410545132903298647071228651202612902161093153753681941*rho 28311 := by
  simp only [Seg30.relationLc1261, Seg30.relationLc1261Part0, Seg30.relationLc1261Part1, Seg30.relationLc1261Part2, Seg30.relationLc1261Part3, Seg30.relationLc1261Part4, Seg30.relationLc1261Part5, Seg30.relationLc1261Part6, Seg30.relationLc1261Part7, Seg30.relationLc1261Part8, Seg30.relationLc1261Part9, Seg30.relationLc1261Part10, Seg30.relationLc1261Part11, Seg30.relationLc1261Part12, Seg30.relationLc1261Part13]
  rw [seg30AccX223_sum, seg30AccY223_sum]
  ring

theorem seg30_lc1262 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1262 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX223 rho + rho 29902 := by
  simp only [Seg30.relationLc1262, Seg30.relationLc1262Part0, Seg30.relationLc1262Part1, Seg30.relationLc1262Part2, Seg30.relationLc1262Part3, Seg30.relationLc1262Part4, Seg30.relationLc1262Part5, Seg30.relationLc1262Part6, Seg30.relationLc1262Part7]
  rw [seg30AccX223_sum]
  ring

theorem seg30_lc1263 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1263 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY223 rho + rho 29904 := by
  simp only [Seg30.relationLc1263, Seg30.relationLc1263Part0, Seg30.relationLc1263Part1, Seg30.relationLc1263Part2, Seg30.relationLc1263Part3, Seg30.relationLc1263Part4, Seg30.relationLc1263Part5, Seg30.relationLc1263Part6, Seg30.relationLc1263Part7]
  rw [seg30AccY223_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
