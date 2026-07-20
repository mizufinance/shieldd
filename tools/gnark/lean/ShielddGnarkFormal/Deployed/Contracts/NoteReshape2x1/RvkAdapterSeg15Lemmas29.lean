import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc942 (rho : Nat -> Seg15.F) :
    Seg15.relationLc942 rho = seg15AccX178 rho + seg15AccY178 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc942, Seg15.relationLc942Part0, Seg15.relationLc942Part1, Seg15.relationLc942Part2, Seg15.relationLc942Part3, Seg15.relationLc942Part4, Seg15.relationLc942Part5, Seg15.relationLc942Part6, Seg15.relationLc942Part7, Seg15.relationLc942Part8, Seg15.relationLc942Part9, Seg15.relationLc942Part10, Seg15.relationLc942Part11]
  rw [seg15AccX178_sum, seg15AccY178_sum]
  ring

theorem seg15_lc943 (rho : Nat -> Seg15.F) :
    Seg15.relationLc943 rho = 2060143958823073355734724205187868322756779499498343359721048205222341509940*seg15AccX178 rho + 6848937982180812692729044196031415334310571292722222488585731250665080063305*rho 16130 := by
  simp only [Seg15.relationLc943, Seg15.relationLc943Part0, Seg15.relationLc943Part1, Seg15.relationLc943Part2, Seg15.relationLc943Part3, Seg15.relationLc943Part4, Seg15.relationLc943Part5]
  rw [seg15AccX178_sum]
  ring

theorem seg15_lc944 (rho : Nat -> Seg15.F) :
    Seg15.relationLc944 rho = 714737645503320255440318207074993637899517394382989883705174528398297173222*seg15AccY178 rho + 714737645503320255440318207074993637899517394382989883705174528398297173222 + 7035268714477096427834258837756375834408889943773983329074787985288032695718*rho 16130 := by
  simp only [Seg15.relationLc944, Seg15.relationLc944Part0, Seg15.relationLc944Part1, Seg15.relationLc944Part2, Seg15.relationLc944Part3, Seg15.relationLc944Part4, Seg15.relationLc944Part5]
  rw [seg15AccY178_sum]
  ring

theorem seg15_lc945 (rho : Nat -> Seg15.F) :
    Seg15.relationLc945 rho = 5398317041411786283541944945710809076600337105488909498544408093870155439291*seg15AccX178 rho + 714737645503320255440318207074993637899517394382989883705174528398297173222*seg15AccY178 rho + 714737645503320255440318207074993637899517394382989883705174528398297173222 + 7674853691918953186993961297285744925599891472972211986889358974761662085511*rho 16130 := by
  simp only [Seg15.relationLc945, Seg15.relationLc945Part0, Seg15.relationLc945Part1, Seg15.relationLc945Part2, Seg15.relationLc945Part3, Seg15.relationLc945Part4, Seg15.relationLc945Part5, Seg15.relationLc945Part6, Seg15.relationLc945Part7, Seg15.relationLc945Part8, Seg15.relationLc945Part9, Seg15.relationLc945Part10, Seg15.relationLc945Part11]
  rw [seg15AccX178_sum, seg15AccY178_sum]
  ring

theorem seg15_lc946 (rho : Nat -> Seg15.F) :
    Seg15.relationLc946 rho = 3046144708016584140706879993070737454775562229665154329390825362047253799750*seg15AccX178 rho + 7729724103925050168808506731706552893476381940771073944230058927519112065819*seg15AccY178 rho + 7729724103925050168808506731706552893476381940771073944230058927519112065819 + 769608057509417237254863641495801605776007862181851841045874481155747153530*rho 16130 := by
  simp only [Seg15.relationLc946, Seg15.relationLc946Part0, Seg15.relationLc946Part1, Seg15.relationLc946Part2, Seg15.relationLc946Part3, Seg15.relationLc946Part4, Seg15.relationLc946Part5, Seg15.relationLc946Part6, Seg15.relationLc946Part7, Seg15.relationLc946Part8, Seg15.relationLc946Part9, Seg15.relationLc946Part10, Seg15.relationLc946Part11]
  rw [seg15AccX178_sum, seg15AccY178_sum]
  ring

theorem seg15_lc947 (rho : Nat -> Seg15.F) :
    Seg15.relationLc947 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX178 rho + rho 17361 := by
  simp only [Seg15.relationLc947, Seg15.relationLc947Part0, Seg15.relationLc947Part1, Seg15.relationLc947Part2, Seg15.relationLc947Part3, Seg15.relationLc947Part4, Seg15.relationLc947Part5]
  rw [seg15AccX178_sum]
  ring

theorem seg15_lc948 (rho : Nat -> Seg15.F) :
    Seg15.relationLc948 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY178 rho + rho 17363 := by
  simp only [Seg15.relationLc948, Seg15.relationLc948Part0, Seg15.relationLc948Part1, Seg15.relationLc948Part2, Seg15.relationLc948Part3, Seg15.relationLc948Part4, Seg15.relationLc948Part5]
  rw [seg15AccY178_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
