import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc886 (rho : Nat -> Seg30.F) :
    Seg30.relationLc886 rho = seg30AccX170 rho + seg30AccY170 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc886, Seg30.relationLc886Part0, Seg30.relationLc886Part1, Seg30.relationLc886Part2, Seg30.relationLc886Part3, Seg30.relationLc886Part4, Seg30.relationLc886Part5, Seg30.relationLc886Part6, Seg30.relationLc886Part7, Seg30.relationLc886Part8, Seg30.relationLc886Part9, Seg30.relationLc886Part10]
  rw [seg30AccX170_sum, seg30AccY170_sum]
  ring

theorem seg30_lc887 (rho : Nat -> Seg30.F) :
    Seg30.relationLc887 rho = 4493477507397166489633705024878414293948320914222600880869178529064453280296*seg30AccX170 rho + 7303261112629090045929153821352107980531881325192768366127188115202627453569*rho 28311 := by
  simp only [Seg30.relationLc887, Seg30.relationLc887Part0, Seg30.relationLc887Part1, Seg30.relationLc887Part2, Seg30.relationLc887Part3, Seg30.relationLc887Part4, Seg30.relationLc887Part5]
  rw [seg30AccX170_sum]
  ring

theorem seg30_lc888 (rho : Nat -> Seg30.F) :
    Seg30.relationLc888 rho = 6642304247852007316468237760849180446036251547538434523827277768741710193020*seg30AccY170 rho + 6642304247852007316468237760849180446036251547538434523827277768741710193020 + 8266985018218747902737876725127409567723927972908008121147414056726396810144*rho 28311 := by
  simp only [Seg30.relationLc888, Seg30.relationLc888Part0, Seg30.relationLc888Part1, Seg30.relationLc888Part2, Seg30.relationLc888Part3, Seg30.relationLc888Part4, Seg30.relationLc888Part5]
  rw [seg30AccY170_sum]
  ring

theorem seg30_lc889 (rho : Nat -> Seg30.F) :
    Seg30.relationLc889 rho = 1141950966989133498703460536262081893113311899919589752624443703589330494144*seg30AccX170 rho + 6642304247852007316468237760849180446036251547538434523827277768741710193020*seg30AccY170 rho + 6642304247852007316468237760849180446036251547538434523827277768741710193020 + 6234457744974383593301526046010688691569964770436321362335523037927101444845*rho 28311 := by
  simp only [Seg30.relationLc889, Seg30.relationLc889Part0, Seg30.relationLc889Part1, Seg30.relationLc889Part2, Seg30.relationLc889Part3, Seg30.relationLc889Part4, Seg30.relationLc889Part5, Seg30.relationLc889Part6, Seg30.relationLc889Part7, Seg30.relationLc889Part8, Seg30.relationLc889Part9, Seg30.relationLc889Part10]
  rw [seg30AccX170_sum, seg30AccY170_sum]
  ring

theorem seg30_lc890 (rho : Nat -> Seg30.F) :
    Seg30.relationLc890 rho = 7302510782439236925545364402519464638262587435234474075310789752328078744897*seg30AccX170 rho + 1802157501576363107780587177932366085339647787615629304107955687175699046021*seg30AccY170 rho + 1802157501576363107780587177932366085339647787615629304107955687175699046021 + 2210004004453986830947298892770857839805934564717742465599710417990307794196*rho 28311 := by
  simp only [Seg30.relationLc890, Seg30.relationLc890Part0, Seg30.relationLc890Part1, Seg30.relationLc890Part2, Seg30.relationLc890Part3, Seg30.relationLc890Part4, Seg30.relationLc890Part5, Seg30.relationLc890Part6, Seg30.relationLc890Part7, Seg30.relationLc890Part8, Seg30.relationLc890Part9, Seg30.relationLc890Part10]
  rw [seg30AccX170_sum, seg30AccY170_sum]
  ring

theorem seg30_lc891 (rho : Nat -> Seg30.F) :
    Seg30.relationLc891 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX170 rho + rho 29478 := by
  simp only [Seg30.relationLc891, Seg30.relationLc891Part0, Seg30.relationLc891Part1, Seg30.relationLc891Part2, Seg30.relationLc891Part3, Seg30.relationLc891Part4, Seg30.relationLc891Part5]
  rw [seg30AccX170_sum]
  ring

theorem seg30_lc892 (rho : Nat -> Seg30.F) :
    Seg30.relationLc892 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY170 rho + rho 29480 := by
  simp only [Seg30.relationLc892, Seg30.relationLc892Part0, Seg30.relationLc892Part1, Seg30.relationLc892Part2, Seg30.relationLc892Part3, Seg30.relationLc892Part4, Seg30.relationLc892Part5]
  rw [seg30AccY170_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
