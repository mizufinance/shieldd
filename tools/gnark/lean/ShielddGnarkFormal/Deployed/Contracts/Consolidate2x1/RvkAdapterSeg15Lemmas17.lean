import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc858 (rho : Nat -> Seg15.F) :
    Seg15.relationLc858 rho = seg15AccX166 rho + seg15AccY166 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc858, Seg15.relationLc858Part0, Seg15.relationLc858Part1, Seg15.relationLc858Part2, Seg15.relationLc858Part3, Seg15.relationLc858Part4, Seg15.relationLc858Part5, Seg15.relationLc858Part6, Seg15.relationLc858Part7, Seg15.relationLc858Part8, Seg15.relationLc858Part9, Seg15.relationLc858Part10]
  rw [seg15AccX166_sum, seg15AccY166_sum]
  ring

theorem seg15_lc859 (rho : Nat -> Seg15.F) :
    Seg15.relationLc859 rho = 4918045902546149631114732373376623948482397847477317210332275144138366725318*seg15AccX166 rho + 493480449235403514561888987779906694161401996783583403140343374931943690515*rho 16136 := by
  simp only [Seg15.relationLc859, Seg15.relationLc859Part0, Seg15.relationLc859Part1, Seg15.relationLc859Part2, Seg15.relationLc859Part3, Seg15.relationLc859Part4, Seg15.relationLc859Part5]
  rw [seg15AccX166_sum]
  ring

theorem seg15_lc860 (rho : Nat -> Seg15.F) :
    Seg15.relationLc860 rho = 3641631821136829194203786441303006704722604542758872218004792580091789365315*seg15AccY166 rho + 3641631821136829194203786441303006704722604542758872218004792580091789365315 + 4743634741443840971423366029108310819962992559215462164130624617425074670819*rho 16136 := by
  simp only [Seg15.relationLc860, Seg15.relationLc860Part0, Seg15.relationLc860Part1, Seg15.relationLc860Part2, Seg15.relationLc860Part3, Seg15.relationLc860Part4, Seg15.relationLc860Part5]
  rw [seg15AccY166_sum]
  ring

theorem seg15_lc861 (rho : Nat -> Seg15.F) :
    Seg15.relationLc861 rho = 384577724453569314052699023166649618916577493135909983991214584112818084235*seg15AccX166 rho + 3641631821136829194203786441303006704722604542758872218004792580091789365315*seg15AccY166 rho + 3641631821136829194203786441303006704722604542758872218004792580091789365315 + 7460784791392073826731019034564597855776145672676744396555711430575241411646*rho 16136 := by
  simp only [Seg15.relationLc861, Seg15.relationLc861Part0, Seg15.relationLc861Part1, Seg15.relationLc861Part2, Seg15.relationLc861Part3, Seg15.relationLc861Part4, Seg15.relationLc861Part5, Seg15.relationLc861Part6, Seg15.relationLc861Part7, Seg15.relationLc861Part8, Seg15.relationLc861Part9, Seg15.relationLc861Part10]
  rw [seg15AccX166_sum, seg15AccY166_sum]
  ring

theorem seg15_lc862 (rho : Nat -> Seg15.F) :
    Seg15.relationLc862 rho = 8059884024974801110196125915614896912459321842018153843944018871804591154806*seg15AccX166 rho + 4802829928291541230045038497478539826653294792395191609930440875825619873726*seg15AccY166 rho + 4802829928291541230045038497478539826653294792395191609930440875825619873726 + 983676958036296597517805904216948675599753662477319431379522025342167827395*rho 16136 := by
  simp only [Seg15.relationLc862, Seg15.relationLc862Part0, Seg15.relationLc862Part1, Seg15.relationLc862Part2, Seg15.relationLc862Part3, Seg15.relationLc862Part4, Seg15.relationLc862Part5, Seg15.relationLc862Part6, Seg15.relationLc862Part7, Seg15.relationLc862Part8, Seg15.relationLc862Part9, Seg15.relationLc862Part10]
  rw [seg15AccX166_sum, seg15AccY166_sum]
  ring

theorem seg15_lc863 (rho : Nat -> Seg15.F) :
    Seg15.relationLc863 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX166 rho + rho 17271 := by
  simp only [Seg15.relationLc863, Seg15.relationLc863Part0, Seg15.relationLc863Part1, Seg15.relationLc863Part2, Seg15.relationLc863Part3, Seg15.relationLc863Part4, Seg15.relationLc863Part5]
  rw [seg15AccX166_sum]
  ring

theorem seg15_lc864 (rho : Nat -> Seg15.F) :
    Seg15.relationLc864 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY166 rho + rho 17273 := by
  simp only [Seg15.relationLc864, Seg15.relationLc864Part0, Seg15.relationLc864Part1, Seg15.relationLc864Part2, Seg15.relationLc864Part3, Seg15.relationLc864Part4, Seg15.relationLc864Part5]
  rw [seg15AccY166_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
