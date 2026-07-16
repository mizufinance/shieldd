import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc949 (rho : Nat -> Seg15.F) :
    Seg15.relationLc949 rho = seg15AccX179 rho + seg15AccY179 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc949, Seg15.relationLc949Part0, Seg15.relationLc949Part1, Seg15.relationLc949Part2, Seg15.relationLc949Part3, Seg15.relationLc949Part4, Seg15.relationLc949Part5, Seg15.relationLc949Part6, Seg15.relationLc949Part7, Seg15.relationLc949Part8, Seg15.relationLc949Part9, Seg15.relationLc949Part10, Seg15.relationLc949Part11]
  rw [seg15AccX179_sum, seg15AccY179_sum]
  ring

theorem seg15_lc950 (rho : Nat -> Seg15.F) :
    Seg15.relationLc950 rho = 438298078731784562962066912655914842098740409231165003929213736243689094366*seg15AccX179 rho + 6992757197777699674250708748459163947449886003420107028852380212440058161259*rho 16136 := by
  simp only [Seg15.relationLc950, Seg15.relationLc950Part0, Seg15.relationLc950Part1, Seg15.relationLc950Part2, Seg15.relationLc950Part3, Seg15.relationLc950Part4, Seg15.relationLc950Part5]
  rw [seg15AccX179_sum]
  ring

theorem seg15_lc951 (rho : Nat -> Seg15.F) :
    Seg15.relationLc951 rho = 2245671786120690006839060813489520491514943197220454776091941164780785366760*seg15AccY179 rho + 2245671786120690006839060813489520491514943197220454776091941164780785366760 + 3883357724003683768614049969558244330787644143085875441049408729026234626242*rho 16136 := by
  simp only [Seg15.relationLc951, Seg15.relationLc951Part0, Seg15.relationLc951Part1, Seg15.relationLc951Part2, Seg15.relationLc951Part3, Seg15.relationLc951Part4, Seg15.relationLc951Part5]
  rw [seg15AccY179_sum]
  ring

theorem seg15_lc952 (rho : Nat -> Seg15.F) :
    Seg15.relationLc952 rho = 7005051122855421406067698564547901861128799230157337013508647551891847481672*seg15AccX179 rho + 2245671786120690006839060813489520491514943197220454776091941164780785366760*seg15AccY179 rho + 2245671786120690006839060813489520491514943197220454776091941164780785366760 + 1300062669047224006033476530424026728147704719380450438132745847029821687496*rho 16136 := by
  simp only [Seg15.relationLc952, Seg15.relationLc952Part0, Seg15.relationLc952Part1, Seg15.relationLc952Part2, Seg15.relationLc952Part3, Seg15.relationLc952Part4, Seg15.relationLc952Part5, Seg15.relationLc952Part6, Seg15.relationLc952Part7, Seg15.relationLc952Part8, Seg15.relationLc952Part9, Seg15.relationLc952Part10, Seg15.relationLc952Part11]
  rw [seg15AccX179_sum, seg15AccY179_sum]
  ring

theorem seg15_lc953 (rho : Nat -> Seg15.F) :
    Seg15.relationLc953 rho = 1439410626572949018181126374233644670247100104996726814426585904025561757369*seg15AccX179 rho + 6198789963307680417409764125292026039860956137933609051843292291136623872281*seg15AccY179 rho + 6198789963307680417409764125292026039860956137933609051843292291136623872281 + 7144399080381146418215348408357519803228194615773613389802487608887587551545*rho 16136 := by
  simp only [Seg15.relationLc953, Seg15.relationLc953Part0, Seg15.relationLc953Part1, Seg15.relationLc953Part2, Seg15.relationLc953Part3, Seg15.relationLc953Part4, Seg15.relationLc953Part5, Seg15.relationLc953Part6, Seg15.relationLc953Part7, Seg15.relationLc953Part8, Seg15.relationLc953Part9, Seg15.relationLc953Part10, Seg15.relationLc953Part11]
  rw [seg15AccX179_sum, seg15AccY179_sum]
  ring

theorem seg15_lc954 (rho : Nat -> Seg15.F) :
    Seg15.relationLc954 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX179 rho + rho 17375 := by
  simp only [Seg15.relationLc954, Seg15.relationLc954Part0, Seg15.relationLc954Part1, Seg15.relationLc954Part2, Seg15.relationLc954Part3, Seg15.relationLc954Part4, Seg15.relationLc954Part5]
  rw [seg15AccX179_sum]
  ring

theorem seg15_lc955 (rho : Nat -> Seg15.F) :
    Seg15.relationLc955 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY179 rho + rho 17377 := by
  simp only [Seg15.relationLc955, Seg15.relationLc955Part0, Seg15.relationLc955Part1, Seg15.relationLc955Part2, Seg15.relationLc955Part3, Seg15.relationLc955Part4, Seg15.relationLc955Part5]
  rw [seg15AccY179_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
