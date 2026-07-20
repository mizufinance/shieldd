import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc753 (rho : Nat -> Seg30.F) :
    Seg30.relationLc753 rho = seg30AccX151 rho + seg30AccY151 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc753, Seg30.relationLc753Part0, Seg30.relationLc753Part1, Seg30.relationLc753Part2, Seg30.relationLc753Part3, Seg30.relationLc753Part4, Seg30.relationLc753Part5, Seg30.relationLc753Part6, Seg30.relationLc753Part7, Seg30.relationLc753Part8, Seg30.relationLc753Part9]
  rw [seg30AccX151_sum, seg30AccY151_sum]
  ring

theorem seg30_lc754 (rho : Nat -> Seg30.F) :
    Seg30.relationLc754 rho = 4581139559655131800588800064852870173629595321372597681225314801325210445827*seg30AccX151 rho + 5270411603461582088167028508315370011555073697546563505417240778775115497472*rho 28311 := by
  simp only [Seg30.relationLc754, Seg30.relationLc754Part0, Seg30.relationLc754Part1, Seg30.relationLc754Part2, Seg30.relationLc754Part3, Seg30.relationLc754Part4]
  rw [seg30AccX151_sum]
  ring

theorem seg30_lc755 (rho : Nat -> Seg30.F) :
    Seg30.relationLc755 rho = 2819632380249469950141144320371320380096821306476083766224419090990878847763*seg30AccY151 rho + 2819632380249469950141144320371320380096821306476083766224419090990878847763 + 6468272815759537655347467424063497937855302588140460740361281552813528541125*rho 28311 := by
  simp only [Seg30.relationLc755, Seg30.relationLc755Part0, Seg30.relationLc755Part1, Seg30.relationLc755Part2, Seg30.relationLc755Part3, Seg30.relationLc755Part4]
  rw [seg30AccY151_sum]
  ring

theorem seg30_lc756 (rho : Nat -> Seg30.F) :
    Seg30.relationLc756 rho = 2089571024952879125691645491338850754422848857557583011303821485061777527974*seg30AccX151 rho + 2819632380249469950141144320371320380096821306476083766224419090990878847763*seg30AccY151 rho + 2819632380249469950141144320371320380096821306476083766224419090990878847763 + 7412017940274871126072399907637710632686561492359085723320431144148497766234*rho 28311 := by
  simp only [Seg30.relationLc756, Seg30.relationLc756Part0, Seg30.relationLc756Part1, Seg30.relationLc756Part2, Seg30.relationLc756Part3, Seg30.relationLc756Part4, Seg30.relationLc756Part5, Seg30.relationLc756Part6, Seg30.relationLc756Part7, Seg30.relationLc756Part8, Seg30.relationLc756Part9]
  rw [seg30AccX151_sum, seg30AccY151_sum]
  ring

theorem seg30_lc757 (rho : Nat -> Seg30.F) :
    Seg30.relationLc757 rho = 6354890724475491298557179447442695776953050477596480816631411970855631711067*seg30AccX151 rho + 5624829369178900474107680618410226151279078028677980061710814364926530391278*seg30AccY151 rho + 5624829369178900474107680618410226151279078028677980061710814364926530391278 + 1032443809153499298176425031143835898689337842794978104614802311768911472807*rho 28311 := by
  simp only [Seg30.relationLc757, Seg30.relationLc757Part0, Seg30.relationLc757Part1, Seg30.relationLc757Part2, Seg30.relationLc757Part3, Seg30.relationLc757Part4, Seg30.relationLc757Part5, Seg30.relationLc757Part6, Seg30.relationLc757Part7, Seg30.relationLc757Part8, Seg30.relationLc757Part9]
  rw [seg30AccX151_sum, seg30AccY151_sum]
  ring

theorem seg30_lc758 (rho : Nat -> Seg30.F) :
    Seg30.relationLc758 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX151 rho + rho 29326 := by
  simp only [Seg30.relationLc758, Seg30.relationLc758Part0, Seg30.relationLc758Part1, Seg30.relationLc758Part2, Seg30.relationLc758Part3, Seg30.relationLc758Part4]
  rw [seg30AccX151_sum]
  ring

theorem seg30_lc759 (rho : Nat -> Seg30.F) :
    Seg30.relationLc759 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY151 rho + rho 29328 := by
  simp only [Seg30.relationLc759, Seg30.relationLc759Part0, Seg30.relationLc759Part1, Seg30.relationLc759Part2, Seg30.relationLc759Part3, Seg30.relationLc759Part4]
  rw [seg30AccY151_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
