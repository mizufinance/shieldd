import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc760 (rho : Nat -> Seg15.F) :
    Seg15.relationLc760 rho = seg15AccX152 rho + seg15AccY152 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc760, Seg15.relationLc760Part0, Seg15.relationLc760Part1, Seg15.relationLc760Part2, Seg15.relationLc760Part3, Seg15.relationLc760Part4, Seg15.relationLc760Part5, Seg15.relationLc760Part6, Seg15.relationLc760Part7, Seg15.relationLc760Part8, Seg15.relationLc760Part9]
  rw [seg15AccX152_sum, seg15AccY152_sum]
  ring

theorem seg15_lc761 (rho : Nat -> Seg15.F) :
    Seg15.relationLc761 rho = 1946315734629126190715494719588597209614883259431992422020952894515219751277*seg15AccX152 rho + 8084198416021423620642490167755578137368562306332511210087614204229693258384*rho 16130 := by
  simp only [Seg15.relationLc761, Seg15.relationLc761Part0, Seg15.relationLc761Part1, Seg15.relationLc761Part2, Seg15.relationLc761Part3, Seg15.relationLc761Part4]
  rw [seg15AccX152_sum]
  ring

theorem seg15_lc762 (rho : Nat -> Seg15.F) :
    Seg15.relationLc762 rho = 2564178869687967144620376908853437305807031057392074828094095452332896156270*seg15AccY152 rho + 2564178869687967144620376908853437305807031057392074828094095452332896156270 + 8359313933581645652512397357219350377119517449063007939966725768789633840236*rho 16130 := by
  simp only [Seg15.relationLc762, Seg15.relationLc762Part0, Seg15.relationLc762Part1, Seg15.relationLc762Part2, Seg15.relationLc762Part3, Seg15.relationLc762Part4]
  rw [seg15AccY152_sum]
  ring

theorem seg15_lc763 (rho : Nat -> Seg15.F) :
    Seg15.relationLc763 rho = 3117352256321503525067247699920891419958206766619070890622246360887926686952*seg15AccX152 rho + 2564178869687967144620376908853437305807031057392074828094095452332896156270*seg15AccY152 rho + 2564178869687967144620376908853437305807031057392074828094095452332896156270 + 1401807956203088574472367033684661438030268596952022696554397502973639364250*rho 16130 := by
  simp only [Seg15.relationLc763, Seg15.relationLc763Part0, Seg15.relationLc763Part1, Seg15.relationLc763Part2, Seg15.relationLc763Part3, Seg15.relationLc763Part4, Seg15.relationLc763Part5, Seg15.relationLc763Part6, Seg15.relationLc763Part7, Seg15.relationLc763Part8, Seg15.relationLc763Part9]
  rw [seg15AccX152_sum, seg15AccY152_sum]
  ring

theorem seg15_lc764 (rho : Nat -> Seg15.F) :
    Seg15.relationLc764 rho = 5327109493106866899181577238860655111417692568534992937312987095029482552089*seg15AccX152 rho + 5880282879740403279628448029928109225568868277761988999841138003584513082771*seg15AccY152 rho + 5880282879740403279628448029928109225568868277761988999841138003584513082771 + 7042653793225281849776457905096885093345630738202041131380835952943769874791*rho 16130 := by
  simp only [Seg15.relationLc764, Seg15.relationLc764Part0, Seg15.relationLc764Part1, Seg15.relationLc764Part2, Seg15.relationLc764Part3, Seg15.relationLc764Part4, Seg15.relationLc764Part5, Seg15.relationLc764Part6, Seg15.relationLc764Part7, Seg15.relationLc764Part8, Seg15.relationLc764Part9]
  rw [seg15AccX152_sum, seg15AccY152_sum]
  ring

theorem seg15_lc765 (rho : Nat -> Seg15.F) :
    Seg15.relationLc765 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX152 rho + rho 17153 := by
  simp only [Seg15.relationLc765, Seg15.relationLc765Part0, Seg15.relationLc765Part1, Seg15.relationLc765Part2, Seg15.relationLc765Part3, Seg15.relationLc765Part4]
  rw [seg15AccX152_sum]
  ring

theorem seg15_lc766 (rho : Nat -> Seg15.F) :
    Seg15.relationLc766 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY152 rho + rho 17155 := by
  simp only [Seg15.relationLc766, Seg15.relationLc766Part0, Seg15.relationLc766Part1, Seg15.relationLc766Part2, Seg15.relationLc766Part3, Seg15.relationLc766Part4]
  rw [seg15AccY152_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
