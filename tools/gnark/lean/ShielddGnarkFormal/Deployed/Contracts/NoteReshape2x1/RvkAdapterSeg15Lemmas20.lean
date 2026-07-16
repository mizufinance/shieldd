import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc879 (rho : Nat -> Seg15.F) :
    Seg15.relationLc879 rho = seg15AccX169 rho + seg15AccY169 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc879, Seg15.relationLc879Part0, Seg15.relationLc879Part1, Seg15.relationLc879Part2, Seg15.relationLc879Part3, Seg15.relationLc879Part4, Seg15.relationLc879Part5, Seg15.relationLc879Part6, Seg15.relationLc879Part7, Seg15.relationLc879Part8, Seg15.relationLc879Part9, Seg15.relationLc879Part10]
  rw [seg15AccX169_sum, seg15AccY169_sum]
  ring

theorem seg15_lc880 (rho : Nat -> Seg15.F) :
    Seg15.relationLc880 rho = 7321381047978916657381227325493198811539079499194854071404395739434491179601*seg15AccX169 rho + 1491578523302326890287634702565833052377336688757681437395404834396561461943*rho 16136 := by
  simp only [Seg15.relationLc880, Seg15.relationLc880Part0, Seg15.relationLc880Part1, Seg15.relationLc880Part2, Seg15.relationLc880Part3, Seg15.relationLc880Part4, Seg15.relationLc880Part5]
  rw [seg15AccX169_sum]
  ring

theorem seg15_lc881 (rho : Nat -> Seg15.F) :
    Seg15.relationLc881 rho = 8184062698146943358494781358089637684750315020587119053955285774853199597574*seg15AccY169 rho + 8184062698146943358494781358089637684750315020587119053955285774853199597574 + 1496499589516708972553470574944181141820166792175120230999873448120688628571*rho 16136 := by
  simp only [Seg15.relationLc881, Seg15.relationLc881Part0, Seg15.relationLc881Part1, Seg15.relationLc881Part2, Seg15.relationLc881Part3, Seg15.relationLc881Part4, Seg15.relationLc881Part5]
  rw [seg15AccY169_sum]
  ring

theorem seg15_lc882 (rho : Nat -> Seg15.F) :
    Seg15.relationLc882 rho = 7571970803872891766144720013752373785427830016251704634266804566158152502649*seg15AccX169 rho + 8184062698146943358494781358089637684750315020587119053955285774853199597574*seg15AccY169 rho + 8184062698146943358494781358089637684750315020587119053955285774853199597574 + 1986162742338048645222729760309734427501451042536165862024719942533116029529*rho 16136 := by
  simp only [Seg15.relationLc882, Seg15.relationLc882Part0, Seg15.relationLc882Part1, Seg15.relationLc882Part2, Seg15.relationLc882Part3, Seg15.relationLc882Part4, Seg15.relationLc882Part5, Seg15.relationLc882Part6, Seg15.relationLc882Part7, Seg15.relationLc882Part8, Seg15.relationLc882Part9, Seg15.relationLc882Part10]
  rw [seg15AccX169_sum, seg15AccY169_sum]
  ring

theorem seg15_lc883 (rho : Nat -> Seg15.F) :
    Seg15.relationLc883 rho = 872490945555478658104104925029172745948069318902359193668428889759256736392*seg15AccX169 rho + 260399051281427065754043580691908846625584314566944773979947681064209641467*seg15AccY169 rho + 260399051281427065754043580691908846625584314566944773979947681064209641467 + 6458299007090321779026095178471812103874448292617897965910513513384293209512*rho 16136 := by
  simp only [Seg15.relationLc883, Seg15.relationLc883Part0, Seg15.relationLc883Part1, Seg15.relationLc883Part2, Seg15.relationLc883Part3, Seg15.relationLc883Part4, Seg15.relationLc883Part5, Seg15.relationLc883Part6, Seg15.relationLc883Part7, Seg15.relationLc883Part8, Seg15.relationLc883Part9, Seg15.relationLc883Part10]
  rw [seg15AccX169_sum, seg15AccY169_sum]
  ring

theorem seg15_lc884 (rho : Nat -> Seg15.F) :
    Seg15.relationLc884 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX169 rho + rho 17295 := by
  simp only [Seg15.relationLc884, Seg15.relationLc884Part0, Seg15.relationLc884Part1, Seg15.relationLc884Part2, Seg15.relationLc884Part3, Seg15.relationLc884Part4, Seg15.relationLc884Part5]
  rw [seg15AccX169_sum]
  ring

theorem seg15_lc885 (rho : Nat -> Seg15.F) :
    Seg15.relationLc885 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY169 rho + rho 17297 := by
  simp only [Seg15.relationLc885, Seg15.relationLc885Part0, Seg15.relationLc885Part1, Seg15.relationLc885Part2, Seg15.relationLc885Part3, Seg15.relationLc885Part4, Seg15.relationLc885Part5]
  rw [seg15AccY169_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
