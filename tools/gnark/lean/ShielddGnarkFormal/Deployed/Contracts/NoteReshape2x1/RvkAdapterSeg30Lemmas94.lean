import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1397 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1397 rho = seg30AccX243 rho + seg30AccY243 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1397, Seg30.relationLc1397Part0, Seg30.relationLc1397Part1, Seg30.relationLc1397Part2, Seg30.relationLc1397Part3, Seg30.relationLc1397Part4, Seg30.relationLc1397Part5, Seg30.relationLc1397Part6, Seg30.relationLc1397Part7, Seg30.relationLc1397Part8, Seg30.relationLc1397Part9, Seg30.relationLc1397Part10, Seg30.relationLc1397Part11, Seg30.relationLc1397Part12, Seg30.relationLc1397Part13, Seg30.relationLc1397Part14, Seg30.relationLc1397Part15]
  rw [seg30AccX243_sum, seg30AccY243_sum]
  ring

theorem seg30_lc1398 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1398 rho = 7396124104652663118422969070910039288717996846228245061431233970477546476098*seg30AccX243 rho + 266244481212878045924026887078478029881372060679573020064507805825996892176*rho 28317 := by
  simp only [Seg30.relationLc1398, Seg30.relationLc1398Part0, Seg30.relationLc1398Part1, Seg30.relationLc1398Part2, Seg30.relationLc1398Part3, Seg30.relationLc1398Part4, Seg30.relationLc1398Part5, Seg30.relationLc1398Part6, Seg30.relationLc1398Part7]
  rw [seg30AccX243_sum]
  ring

theorem seg30_lc1399 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1399 rho = 6531902123103138028322820526628973091630042871057622470582109851478141098661*seg30AccY243 rho + 6531902123103138028322820526628973091630042871057622470582109851478141098661 + 5634786646466419842005984955937291077093527399684750966063598167198254324639*rho 28317 := by
  simp only [Seg30.relationLc1399, Seg30.relationLc1399Part0, Seg30.relationLc1399Part1, Seg30.relationLc1399Part2, Seg30.relationLc1399Part3, Seg30.relationLc1399Part4, Seg30.relationLc1399Part5, Seg30.relationLc1399Part6, Seg30.relationLc1399Part7]
  rw [seg30AccY243_sum]
  ring

theorem seg30_lc1400 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1400 rho = 5039495596350405881368687689094755673230085600395184132075710665850264480380*seg30AccX243 rho + 6531902123103138028322820526628973091630042871057622470582109851478141098661*seg30AccY243 rho + 6531902123103138028322820526628973091630042871057622470582109851478141098661 + 1808172316613316156884926593042600999826488400093478603460728225673889130546*rho 28317 := by
  simp only [Seg30.relationLc1400, Seg30.relationLc1400Part0, Seg30.relationLc1400Part1, Seg30.relationLc1400Part2, Seg30.relationLc1400Part3, Seg30.relationLc1400Part4, Seg30.relationLc1400Part5, Seg30.relationLc1400Part6, Seg30.relationLc1400Part7, Seg30.relationLc1400Part8, Seg30.relationLc1400Part9, Seg30.relationLc1400Part10, Seg30.relationLc1400Part11, Seg30.relationLc1400Part12, Seg30.relationLc1400Part13, Seg30.relationLc1400Part14, Seg30.relationLc1400Part15]
  rw [seg30AccX243_sum, seg30AccY243_sum]
  ring

theorem seg30_lc1401 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1401 rho = 3404966153077964542880137249686790858145813734758879695859522790067144758661*seg30AccX243 rho + 1912559626325232395926004412152573439745856464096441357353123604439268140380*seg30AccY243 rho + 1912559626325232395926004412152573439745856464096441357353123604439268140380 + 6636289432815054267363898345738945531549410935060585224474505230243520108495*rho 28317 := by
  simp only [Seg30.relationLc1401, Seg30.relationLc1401Part0, Seg30.relationLc1401Part1, Seg30.relationLc1401Part2, Seg30.relationLc1401Part3, Seg30.relationLc1401Part4, Seg30.relationLc1401Part5, Seg30.relationLc1401Part6, Seg30.relationLc1401Part7, Seg30.relationLc1401Part8, Seg30.relationLc1401Part9, Seg30.relationLc1401Part10, Seg30.relationLc1401Part11, Seg30.relationLc1401Part12, Seg30.relationLc1401Part13, Seg30.relationLc1401Part14, Seg30.relationLc1401Part15]
  rw [seg30AccX243_sum, seg30AccY243_sum]
  ring

theorem seg30_lc1402 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1402 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX243 rho + rho 30068 := by
  simp only [Seg30.relationLc1402, Seg30.relationLc1402Part0, Seg30.relationLc1402Part1, Seg30.relationLc1402Part2, Seg30.relationLc1402Part3, Seg30.relationLc1402Part4, Seg30.relationLc1402Part5, Seg30.relationLc1402Part6, Seg30.relationLc1402Part7]
  rw [seg30AccX243_sum]
  ring

theorem seg30_lc1403 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1403 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY243 rho + rho 30070 := by
  simp only [Seg30.relationLc1403, Seg30.relationLc1403Part0, Seg30.relationLc1403Part1, Seg30.relationLc1403Part2, Seg30.relationLc1403Part3, Seg30.relationLc1403Part4, Seg30.relationLc1403Part5, Seg30.relationLc1403Part6, Seg30.relationLc1403Part7]
  rw [seg30AccY243_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
