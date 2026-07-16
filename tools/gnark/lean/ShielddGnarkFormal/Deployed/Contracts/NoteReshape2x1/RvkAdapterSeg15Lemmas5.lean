import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc774 (rho : Nat -> Seg15.F) :
    Seg15.relationLc774 rho = seg15AccX154 rho + seg15AccY154 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc774, Seg15.relationLc774Part0, Seg15.relationLc774Part1, Seg15.relationLc774Part2, Seg15.relationLc774Part3, Seg15.relationLc774Part4, Seg15.relationLc774Part5, Seg15.relationLc774Part6, Seg15.relationLc774Part7, Seg15.relationLc774Part8, Seg15.relationLc774Part9]
  rw [seg15AccX154_sum, seg15AccY154_sum]
  ring

theorem seg15_lc775 (rho : Nat -> Seg15.F) :
    Seg15.relationLc775 rho = 4368821252455360196064132101118635789175210849407228732022954977523087268278*seg15AccX154 rho + 2107395903920557572141994998616808636924098578621934478699655925422990880072*rho 16136 := by
  simp only [Seg15.relationLc775, Seg15.relationLc775Part0, Seg15.relationLc775Part1, Seg15.relationLc775Part2, Seg15.relationLc775Part3, Seg15.relationLc775Part4]
  rw [seg15AccX154_sum]
  ring

theorem seg15_lc776 (rho : Nat -> Seg15.F) :
    Seg15.relationLc776 rho = 4159213325184189711441316843469868268679184464412463059292100956586171524082*seg15AccY154 rho + 4159213325184189711441316843469868268679184464412463059292100956586171524082 + 7490811308284524701189420543202543492686314952173282607366257967557762122603*rho 16136 := by
  simp only [Seg15.relationLc776, Seg15.relationLc776Part0, Seg15.relationLc776Part1, Seg15.relationLc776Part2, Seg15.relationLc776Part3, Seg15.relationLc776Part4]
  rw [seg15AccY154_sum]
  ring

theorem seg15_lc777 (rho : Nat -> Seg15.F) :
    Seg15.relationLc777 rho = 7196429448620020136449036585410400333515637239171124634835257818771577116372*seg15AccX154 rho + 4159213325184189711441316843469868268679184464412463059292100956586171524082*seg15AccY154 rho + 4159213325184189711441316843469868268679184464412463059292100956586171524082 + 8209889118780059873848834645905447917446503706795333695833008928860707228632*rho 16136 := by
  simp only [Seg15.relationLc777, Seg15.relationLc777Part0, Seg15.relationLc777Part1, Seg15.relationLc777Part2, Seg15.relationLc777Part3, Seg15.relationLc777Part4, Seg15.relationLc777Part5, Seg15.relationLc777Part6, Seg15.relationLc777Part7, Seg15.relationLc777Part8, Seg15.relationLc777Part9]
  rw [seg15AccX154_sum, seg15AccY154_sum]
  ring

theorem seg15_lc778 (rho : Nat -> Seg15.F) :
    Seg15.relationLc778 rho = 1248032300808350287799788353371146197860262095982939193099975637145832122669*seg15AccX154 rho + 4285248424244180712807508095311678262696714870741600768643132499331237714959*seg15AccY154 rho + 4285248424244180712807508095311678262696714870741600768643132499331237714959 + 234572630648310550399990292876098613929395628358730132102224527056702010409*rho 16136 := by
  simp only [Seg15.relationLc778, Seg15.relationLc778Part0, Seg15.relationLc778Part1, Seg15.relationLc778Part2, Seg15.relationLc778Part3, Seg15.relationLc778Part4, Seg15.relationLc778Part5, Seg15.relationLc778Part6, Seg15.relationLc778Part7, Seg15.relationLc778Part8, Seg15.relationLc778Part9]
  rw [seg15AccX154_sum, seg15AccY154_sum]
  ring

theorem seg15_lc779 (rho : Nat -> Seg15.F) :
    Seg15.relationLc779 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX154 rho + rho 17175 := by
  simp only [Seg15.relationLc779, Seg15.relationLc779Part0, Seg15.relationLc779Part1, Seg15.relationLc779Part2, Seg15.relationLc779Part3, Seg15.relationLc779Part4]
  rw [seg15AccX154_sum]
  ring

theorem seg15_lc780 (rho : Nat -> Seg15.F) :
    Seg15.relationLc780 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY154 rho + rho 17177 := by
  simp only [Seg15.relationLc780, Seg15.relationLc780Part0, Seg15.relationLc780Part1, Seg15.relationLc780Part2, Seg15.relationLc780Part3, Seg15.relationLc780Part4]
  rw [seg15AccY154_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
