import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1180 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1180 rho = seg15AccX212 rho + seg15AccY212 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1180, Seg15.relationLc1180Part0, Seg15.relationLc1180Part1, Seg15.relationLc1180Part2, Seg15.relationLc1180Part3, Seg15.relationLc1180Part4, Seg15.relationLc1180Part5, Seg15.relationLc1180Part6, Seg15.relationLc1180Part7, Seg15.relationLc1180Part8, Seg15.relationLc1180Part9, Seg15.relationLc1180Part10, Seg15.relationLc1180Part11, Seg15.relationLc1180Part12, Seg15.relationLc1180Part13]
  rw [seg15AccX212_sum, seg15AccY212_sum]
  ring

theorem seg15_lc1181 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1181 rho = 58918325820461944259557627262580109539818437254177415012051304305529098982*seg15AccX212 rho + 7893342063542007363849646815109681961881602631397189320761681794130772690789*rho 16136 := by
  simp only [Seg15.relationLc1181, Seg15.relationLc1181Part0, Seg15.relationLc1181Part1, Seg15.relationLc1181Part2, Seg15.relationLc1181Part3, Seg15.relationLc1181Part4, Seg15.relationLc1181Part5, Seg15.relationLc1181Part6]
  rw [seg15AccX212_sum]
  ring

theorem seg15_lc1182 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1182 rho = 2585872893106133656212238141247348463124237904139477394990300382205626000743*seg15AccY212 rho + 2585872893106133656212238141247348463124237904139477394990300382205626000743 + 4088562414217022427536605253412035611528252553393612053114188351806014648827*rho 16136 := by
  simp only [Seg15.relationLc1182, Seg15.relationLc1182Part0, Seg15.relationLc1182Part1, Seg15.relationLc1182Part2, Seg15.relationLc1182Part3, Seg15.relationLc1182Part4, Seg15.relationLc1182Part5, Seg15.relationLc1182Part6]
  rw [seg15AccY212_sum]
  ring

theorem seg15_lc1183 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1183 rho = 5420016633719771835340195668296816055758824438696121794035560980578669991261*seg15AccX212 rho + 2585872893106133656212238141247348463124237904139477394990300382205626000743*seg15AccY212 rho + 2585872893106133656212238141247348463124237904139477394990300382205626000743 + 1639737650170303177386863504158044672748119447038525397113381314717157604819*rho 16136 := by
  simp only [Seg15.relationLc1183, Seg15.relationLc1183Part0, Seg15.relationLc1183Part1, Seg15.relationLc1183Part2, Seg15.relationLc1183Part3, Seg15.relationLc1183Part4, Seg15.relationLc1183Part5, Seg15.relationLc1183Part6, Seg15.relationLc1183Part7, Seg15.relationLc1183Part8, Seg15.relationLc1183Part9, Seg15.relationLc1183Part10, Seg15.relationLc1183Part11, Seg15.relationLc1183Part12, Seg15.relationLc1183Part13]
  rw [seg15AccX212_sum, seg15AccY212_sum]
  ring

theorem seg15_lc1184 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1184 rho = 3024445115708598588908629270484730475617074896457942033899672475338739247780*seg15AccX212 rho + 5858588856322236768036586797534198068251661431014586432944933073711783238298*seg15AccY212 rho + 5858588856322236768036586797534198068251661431014586432944933073711783238298 + 6804724099258067246861961434623501858627779888115538430821852141200251634222*rho 16136 := by
  simp only [Seg15.relationLc1184, Seg15.relationLc1184Part0, Seg15.relationLc1184Part1, Seg15.relationLc1184Part2, Seg15.relationLc1184Part3, Seg15.relationLc1184Part4, Seg15.relationLc1184Part5, Seg15.relationLc1184Part6, Seg15.relationLc1184Part7, Seg15.relationLc1184Part8, Seg15.relationLc1184Part9, Seg15.relationLc1184Part10, Seg15.relationLc1184Part11, Seg15.relationLc1184Part12, Seg15.relationLc1184Part13]
  rw [seg15AccX212_sum, seg15AccY212_sum]
  ring

theorem seg15_lc1185 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1185 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX212 rho + rho 17639 := by
  simp only [Seg15.relationLc1185, Seg15.relationLc1185Part0, Seg15.relationLc1185Part1, Seg15.relationLc1185Part2, Seg15.relationLc1185Part3, Seg15.relationLc1185Part4, Seg15.relationLc1185Part5, Seg15.relationLc1185Part6]
  rw [seg15AccX212_sum]
  ring

theorem seg15_lc1186 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1186 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY212 rho + rho 17641 := by
  simp only [Seg15.relationLc1186, Seg15.relationLc1186Part0, Seg15.relationLc1186Part1, Seg15.relationLc1186Part2, Seg15.relationLc1186Part3, Seg15.relationLc1186Part4, Seg15.relationLc1186Part5, Seg15.relationLc1186Part6]
  rw [seg15AccY212_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
