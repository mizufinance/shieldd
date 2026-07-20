import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc823 (rho : Nat -> Seg30.F) :
    Seg30.relationLc823 rho = seg30AccX161 rho + seg30AccY161 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc823, Seg30.relationLc823Part0, Seg30.relationLc823Part1, Seg30.relationLc823Part2, Seg30.relationLc823Part3, Seg30.relationLc823Part4, Seg30.relationLc823Part5, Seg30.relationLc823Part6, Seg30.relationLc823Part7, Seg30.relationLc823Part8, Seg30.relationLc823Part9, Seg30.relationLc823Part10]
  rw [seg30AccX161_sum, seg30AccY161_sum]
  ring

theorem seg30_lc824 (rho : Nat -> Seg30.F) :
    Seg30.relationLc824 rho = 4951309458950130803972020910168110269840383491364827931466189061193337832099*seg30AccX161 rho + 5712556502017034431704548607205565957366676659780540827764652614739871033596*rho 28311 := by
  simp only [Seg30.relationLc824, Seg30.relationLc824Part0, Seg30.relationLc824Part1, Seg30.relationLc824Part2, Seg30.relationLc824Part3, Seg30.relationLc824Part4, Seg30.relationLc824Part5]
  rw [seg30AccX161_sum]
  ring

theorem seg30_lc825 (rho : Nat -> Seg30.F) :
    Seg30.relationLc825 rho = 1120508206916141268234564891484746970076129195562184101961367945007133649704*seg30AccY161 rho + 1120508206916141268234564891484746970076129195562184101961367945007133649704 + 7266147486085304909815780502333830210687352979872459545024725335848246466849*rho 28311 := by
  simp only [Seg30.relationLc825, Seg30.relationLc825Part0, Seg30.relationLc825Part1, Seg30.relationLc825Part2, Seg30.relationLc825Part3, Seg30.relationLc825Part4, Seg30.relationLc825Part5]
  rw [seg30AccY161_sum]
  ring

theorem seg30_lc826 (rho : Nat -> Seg30.F) :
    Seg30.relationLc826 rho = 3093189673726159490242691957365957819917770621705315929039336110991674265545*seg30AccX161 rho + 1120508206916141268234564891484746970076129195562184101961367945007133649704*seg30AccY161 rho + 1120508206916141268234564891484746970076129195562184101961367945007133649704 + 1655168791497370193675450833857782587699786217764025375654919269357873119957*rho 28311 := by
  simp only [Seg30.relationLc826, Seg30.relationLc826Part0, Seg30.relationLc826Part1, Seg30.relationLc826Part2, Seg30.relationLc826Part3, Seg30.relationLc826Part4, Seg30.relationLc826Part5, Seg30.relationLc826Part6, Seg30.relationLc826Part7, Seg30.relationLc826Part8, Seg30.relationLc826Part9, Seg30.relationLc826Part10]
  rw [seg30AccX161_sum, seg30AccY161_sum]
  ring

theorem seg30_lc827 (rho : Nat -> Seg30.F) :
    Seg30.relationLc827 rho = 5351272075702210934006132981415588711458128713448747898895897344925734973496*seg30AccX161 rho + 7323953542512229156014260047296799561299770139591879725973865510910275589337*seg30AccY161 rho + 7323953542512229156014260047296799561299770139591879725973865510910275589337 + 6789292957931000230573374104923763943676113117390038452280314186559536119084*rho 28311 := by
  simp only [Seg30.relationLc827, Seg30.relationLc827Part0, Seg30.relationLc827Part1, Seg30.relationLc827Part2, Seg30.relationLc827Part3, Seg30.relationLc827Part4, Seg30.relationLc827Part5, Seg30.relationLc827Part6, Seg30.relationLc827Part7, Seg30.relationLc827Part8, Seg30.relationLc827Part9, Seg30.relationLc827Part10]
  rw [seg30AccX161_sum, seg30AccY161_sum]
  ring

theorem seg30_lc828 (rho : Nat -> Seg30.F) :
    Seg30.relationLc828 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX161 rho + rho 29406 := by
  simp only [Seg30.relationLc828, Seg30.relationLc828Part0, Seg30.relationLc828Part1, Seg30.relationLc828Part2, Seg30.relationLc828Part3, Seg30.relationLc828Part4, Seg30.relationLc828Part5]
  rw [seg30AccX161_sum]
  ring

theorem seg30_lc829 (rho : Nat -> Seg30.F) :
    Seg30.relationLc829 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY161 rho + rho 29408 := by
  simp only [Seg30.relationLc829, Seg30.relationLc829Part0, Seg30.relationLc829Part1, Seg30.relationLc829Part2, Seg30.relationLc829Part3, Seg30.relationLc829Part4, Seg30.relationLc829Part5]
  rw [seg30AccY161_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
