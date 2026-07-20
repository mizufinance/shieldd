import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc830 (rho : Nat -> Seg30.F) :
    Seg30.relationLc830 rho = seg30AccX162 rho + seg30AccY162 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc830, Seg30.relationLc830Part0, Seg30.relationLc830Part1, Seg30.relationLc830Part2, Seg30.relationLc830Part3, Seg30.relationLc830Part4, Seg30.relationLc830Part5, Seg30.relationLc830Part6, Seg30.relationLc830Part7, Seg30.relationLc830Part8, Seg30.relationLc830Part9, Seg30.relationLc830Part10]
  rw [seg30AccX162_sum, seg30AccY162_sum]
  ring

theorem seg30_lc831 (rho : Nat -> Seg30.F) :
    Seg30.relationLc831 rho = 1606832623506622009576745362192014515195328634060703426984055627957414160834*seg30AccX162 rho + 3345009635045847932154590039536683660879363860941944957943518201878870351108*rho 28311 := by
  simp only [Seg30.relationLc831, Seg30.relationLc831Part0, Seg30.relationLc831Part1, Seg30.relationLc831Part2, Seg30.relationLc831Part3, Seg30.relationLc831Part4, Seg30.relationLc831Part5]
  rw [seg30AccX162_sum]
  ring

theorem seg30_lc832 (rho : Nat -> Seg30.F) :
    Seg30.relationLc832 rho = 5909067291311107764629632745358697599552725296090780820285122386244614492264*seg30AccY162 rho + 5909067291311107764629632745358697599552725296090780820285122386244614492264 + 3813203364270007292567495972199750733474972045530812292425483950911188586248*rho 28311 := by
  simp only [Seg30.relationLc832, Seg30.relationLc832Part0, Seg30.relationLc832Part1, Seg30.relationLc832Part2, Seg30.relationLc832Part3, Seg30.relationLc832Part4, Seg30.relationLc832Part5]
  rw [seg30AccY162_sum]
  ring

theorem seg30_lc833 (rho : Nat -> Seg30.F) :
    Seg30.relationLc833 rho = 5934855718854663036309113568485738265682300436003355911993871129606295011137*seg30AccX162 rho + 5909067291311107764629632745358697599552725296090780820285122386244614492264*seg30AccY162 rho + 5909067291311107764629632745358697599552725296090780820285122386244614492264 + 563430439758206910088439761089720302382853024371184921710246284234568899173*rho 28311 := by
  simp only [Seg30.relationLc833, Seg30.relationLc833Part0, Seg30.relationLc833Part1, Seg30.relationLc833Part2, Seg30.relationLc833Part3, Seg30.relationLc833Part4, Seg30.relationLc833Part5, Seg30.relationLc833Part6, Seg30.relationLc833Part7, Seg30.relationLc833Part8, Seg30.relationLc833Part9, Seg30.relationLc833Part10]
  rw [seg30AccX162_sum, seg30AccY162_sum]
  ring

theorem seg30_lc834 (rho : Nat -> Seg30.F) :
    Seg30.relationLc834 rho = 2509606030573707387939711370295808265693598899150707915941362326311114227904*seg30AccX162 rho + 2535394458117262659619192193422848931823174039063283007650111069672794746777*seg30AccY162 rho + 2535394458117262659619192193422848931823174039063283007650111069672794746777 + 7881031309670163514160385177691826228993046310782878906224987171682840339868*rho 28311 := by
  simp only [Seg30.relationLc834, Seg30.relationLc834Part0, Seg30.relationLc834Part1, Seg30.relationLc834Part2, Seg30.relationLc834Part3, Seg30.relationLc834Part4, Seg30.relationLc834Part5, Seg30.relationLc834Part6, Seg30.relationLc834Part7, Seg30.relationLc834Part8, Seg30.relationLc834Part9, Seg30.relationLc834Part10]
  rw [seg30AccX162_sum, seg30AccY162_sum]
  ring

theorem seg30_lc835 (rho : Nat -> Seg30.F) :
    Seg30.relationLc835 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX162 rho + rho 29414 := by
  simp only [Seg30.relationLc835, Seg30.relationLc835Part0, Seg30.relationLc835Part1, Seg30.relationLc835Part2, Seg30.relationLc835Part3, Seg30.relationLc835Part4, Seg30.relationLc835Part5]
  rw [seg30AccX162_sum]
  ring

theorem seg30_lc836 (rho : Nat -> Seg30.F) :
    Seg30.relationLc836 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY162 rho + rho 29416 := by
  simp only [Seg30.relationLc836, Seg30.relationLc836Part0, Seg30.relationLc836Part1, Seg30.relationLc836Part2, Seg30.relationLc836Part3, Seg30.relationLc836Part4, Seg30.relationLc836Part5]
  rw [seg30AccY162_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
