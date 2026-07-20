import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc774 (rho : Nat -> Seg30.F) :
    Seg30.relationLc774 rho = seg30AccX154 rho + seg30AccY154 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc774, Seg30.relationLc774Part0, Seg30.relationLc774Part1, Seg30.relationLc774Part2, Seg30.relationLc774Part3, Seg30.relationLc774Part4, Seg30.relationLc774Part5, Seg30.relationLc774Part6, Seg30.relationLc774Part7, Seg30.relationLc774Part8, Seg30.relationLc774Part9]
  rw [seg30AccX154_sum, seg30AccY154_sum]
  ring

theorem seg30_lc775 (rho : Nat -> Seg30.F) :
    Seg30.relationLc775 rho = 4368821252455360196064132101118635789175210849407228732022954977523087268278*seg30AccX154 rho + 2107395903920557572141994998616808636924098578621934478699655925422990880072*rho 28311 := by
  simp only [Seg30.relationLc775, Seg30.relationLc775Part0, Seg30.relationLc775Part1, Seg30.relationLc775Part2, Seg30.relationLc775Part3, Seg30.relationLc775Part4]
  rw [seg30AccX154_sum]
  ring

theorem seg30_lc776 (rho : Nat -> Seg30.F) :
    Seg30.relationLc776 rho = 4159213325184189711441316843469868268679184464412463059292100956586171524082*seg30AccY154 rho + 4159213325184189711441316843469868268679184464412463059292100956586171524082 + 7490811308284524701189420543202543492686314952173282607366257967557762122603*rho 28311 := by
  simp only [Seg30.relationLc776, Seg30.relationLc776Part0, Seg30.relationLc776Part1, Seg30.relationLc776Part2, Seg30.relationLc776Part3, Seg30.relationLc776Part4]
  rw [seg30AccY154_sum]
  ring

theorem seg30_lc777 (rho : Nat -> Seg30.F) :
    Seg30.relationLc777 rho = 7196429448620020136449036585410400333515637239171124634835257818771577116372*seg30AccX154 rho + 4159213325184189711441316843469868268679184464412463059292100956586171524082*seg30AccY154 rho + 4159213325184189711441316843469868268679184464412463059292100956586171524082 + 8209889118780059873848834645905447917446503706795333695833008928860707228632*rho 28311 := by
  simp only [Seg30.relationLc777, Seg30.relationLc777Part0, Seg30.relationLc777Part1, Seg30.relationLc777Part2, Seg30.relationLc777Part3, Seg30.relationLc777Part4, Seg30.relationLc777Part5, Seg30.relationLc777Part6, Seg30.relationLc777Part7, Seg30.relationLc777Part8, Seg30.relationLc777Part9]
  rw [seg30AccX154_sum, seg30AccY154_sum]
  ring

theorem seg30_lc778 (rho : Nat -> Seg30.F) :
    Seg30.relationLc778 rho = 1248032300808350287799788353371146197860262095982939193099975637145832122669*seg30AccX154 rho + 4285248424244180712807508095311678262696714870741600768643132499331237714959*seg30AccY154 rho + 4285248424244180712807508095311678262696714870741600768643132499331237714959 + 234572630648310550399990292876098613929395628358730132102224527056702010409*rho 28311 := by
  simp only [Seg30.relationLc778, Seg30.relationLc778Part0, Seg30.relationLc778Part1, Seg30.relationLc778Part2, Seg30.relationLc778Part3, Seg30.relationLc778Part4, Seg30.relationLc778Part5, Seg30.relationLc778Part6, Seg30.relationLc778Part7, Seg30.relationLc778Part8, Seg30.relationLc778Part9]
  rw [seg30AccX154_sum, seg30AccY154_sum]
  ring

theorem seg30_lc779 (rho : Nat -> Seg30.F) :
    Seg30.relationLc779 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX154 rho + rho 29350 := by
  simp only [Seg30.relationLc779, Seg30.relationLc779Part0, Seg30.relationLc779Part1, Seg30.relationLc779Part2, Seg30.relationLc779Part3, Seg30.relationLc779Part4]
  rw [seg30AccX154_sum]
  ring

theorem seg30_lc780 (rho : Nat -> Seg30.F) :
    Seg30.relationLc780 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY154 rho + rho 29352 := by
  simp only [Seg30.relationLc780, Seg30.relationLc780Part0, Seg30.relationLc780Part1, Seg30.relationLc780Part2, Seg30.relationLc780Part3, Seg30.relationLc780Part4]
  rw [seg30AccY154_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
