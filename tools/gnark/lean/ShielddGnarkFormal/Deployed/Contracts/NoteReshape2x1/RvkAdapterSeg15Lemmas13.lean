import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc830 (rho : Nat -> Seg15.F) :
    Seg15.relationLc830 rho = seg15AccX162 rho + seg15AccY162 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc830, Seg15.relationLc830Part0, Seg15.relationLc830Part1, Seg15.relationLc830Part2, Seg15.relationLc830Part3, Seg15.relationLc830Part4, Seg15.relationLc830Part5, Seg15.relationLc830Part6, Seg15.relationLc830Part7, Seg15.relationLc830Part8, Seg15.relationLc830Part9, Seg15.relationLc830Part10]
  rw [seg15AccX162_sum, seg15AccY162_sum]
  ring

theorem seg15_lc831 (rho : Nat -> Seg15.F) :
    Seg15.relationLc831 rho = 1606832623506622009576745362192014515195328634060703426984055627957414160834*seg15AccX162 rho + 3345009635045847932154590039536683660879363860941944957943518201878870351108*rho 16130 := by
  simp only [Seg15.relationLc831, Seg15.relationLc831Part0, Seg15.relationLc831Part1, Seg15.relationLc831Part2, Seg15.relationLc831Part3, Seg15.relationLc831Part4, Seg15.relationLc831Part5]
  rw [seg15AccX162_sum]
  ring

theorem seg15_lc832 (rho : Nat -> Seg15.F) :
    Seg15.relationLc832 rho = 5909067291311107764629632745358697599552725296090780820285122386244614492264*seg15AccY162 rho + 5909067291311107764629632745358697599552725296090780820285122386244614492264 + 3813203364270007292567495972199750733474972045530812292425483950911188586248*rho 16130 := by
  simp only [Seg15.relationLc832, Seg15.relationLc832Part0, Seg15.relationLc832Part1, Seg15.relationLc832Part2, Seg15.relationLc832Part3, Seg15.relationLc832Part4, Seg15.relationLc832Part5]
  rw [seg15AccY162_sum]
  ring

theorem seg15_lc833 (rho : Nat -> Seg15.F) :
    Seg15.relationLc833 rho = 5934855718854663036309113568485738265682300436003355911993871129606295011137*seg15AccX162 rho + 5909067291311107764629632745358697599552725296090780820285122386244614492264*seg15AccY162 rho + 5909067291311107764629632745358697599552725296090780820285122386244614492264 + 563430439758206910088439761089720302382853024371184921710246284234568899173*rho 16130 := by
  simp only [Seg15.relationLc833, Seg15.relationLc833Part0, Seg15.relationLc833Part1, Seg15.relationLc833Part2, Seg15.relationLc833Part3, Seg15.relationLc833Part4, Seg15.relationLc833Part5, Seg15.relationLc833Part6, Seg15.relationLc833Part7, Seg15.relationLc833Part8, Seg15.relationLc833Part9, Seg15.relationLc833Part10]
  rw [seg15AccX162_sum, seg15AccY162_sum]
  ring

theorem seg15_lc834 (rho : Nat -> Seg15.F) :
    Seg15.relationLc834 rho = 2509606030573707387939711370295808265693598899150707915941362326311114227904*seg15AccX162 rho + 2535394458117262659619192193422848931823174039063283007650111069672794746777*seg15AccY162 rho + 2535394458117262659619192193422848931823174039063283007650111069672794746777 + 7881031309670163514160385177691826228993046310782878906224987171682840339868*rho 16130 := by
  simp only [Seg15.relationLc834, Seg15.relationLc834Part0, Seg15.relationLc834Part1, Seg15.relationLc834Part2, Seg15.relationLc834Part3, Seg15.relationLc834Part4, Seg15.relationLc834Part5, Seg15.relationLc834Part6, Seg15.relationLc834Part7, Seg15.relationLc834Part8, Seg15.relationLc834Part9, Seg15.relationLc834Part10]
  rw [seg15AccX162_sum, seg15AccY162_sum]
  ring

theorem seg15_lc835 (rho : Nat -> Seg15.F) :
    Seg15.relationLc835 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX162 rho + rho 17233 := by
  simp only [Seg15.relationLc835, Seg15.relationLc835Part0, Seg15.relationLc835Part1, Seg15.relationLc835Part2, Seg15.relationLc835Part3, Seg15.relationLc835Part4, Seg15.relationLc835Part5]
  rw [seg15AccX162_sum]
  ring

theorem seg15_lc836 (rho : Nat -> Seg15.F) :
    Seg15.relationLc836 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY162 rho + rho 17235 := by
  simp only [Seg15.relationLc836, Seg15.relationLc836Part0, Seg15.relationLc836Part1, Seg15.relationLc836Part2, Seg15.relationLc836Part3, Seg15.relationLc836Part4, Seg15.relationLc836Part5]
  rw [seg15AccY162_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
