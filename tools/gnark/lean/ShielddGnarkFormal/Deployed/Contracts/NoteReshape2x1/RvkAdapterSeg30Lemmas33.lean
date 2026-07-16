import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc970 (rho : Nat -> Seg30.F) :
    Seg30.relationLc970 rho = seg30AccX182 rho + seg30AccY182 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc970, Seg30.relationLc970Part0, Seg30.relationLc970Part1, Seg30.relationLc970Part2, Seg30.relationLc970Part3, Seg30.relationLc970Part4, Seg30.relationLc970Part5, Seg30.relationLc970Part6, Seg30.relationLc970Part7, Seg30.relationLc970Part8, Seg30.relationLc970Part9, Seg30.relationLc970Part10, Seg30.relationLc970Part11]
  rw [seg30AccX182_sum, seg30AccY182_sum]
  ring

theorem seg30_lc971 (rho : Nat -> Seg30.F) :
    Seg30.relationLc971 rho = 4232871751035212290672276397719026689929378508096219718924767432588013967238*seg30AccX182 rho + 6029055947668892632292560307808214906730993787835331228218588797495467717355*rho 28317 := by
  simp only [Seg30.relationLc971, Seg30.relationLc971Part0, Seg30.relationLc971Part1, Seg30.relationLc971Part2, Seg30.relationLc971Part3, Seg30.relationLc971Part4, Seg30.relationLc971Part5]
  rw [seg30AccX182_sum]
  ring

theorem seg30_lc972 (rho : Nat -> Seg30.F) :
    Seg30.relationLc972 rho = 3997700547697378319545011890765266486027405910922669682977566226271873404539*seg30AccY182 rho + 3997700547697378319545011890765266486027405910922669682977566226271873404539 + 6759400635131567824879531417187974923682484167436657653839789258123339500419*rho 28317 := by
  simp only [Seg30.relationLc972, Seg30.relationLc972Part0, Seg30.relationLc972Part1, Seg30.relationLc972Part2, Seg30.relationLc972Part3, Seg30.relationLc972Part4, Seg30.relationLc972Part5]
  rw [seg30AccY182_sum]
  ring

theorem seg30_lc973 (rho : Nat -> Seg30.F) :
    Seg30.relationLc973 rho = 4700222797927880137521664018036907893390538285634583751896078188291874526579*seg30AccX182 rho + 3997700547697378319545011890765266486027405910922669682977566226271873404539*seg30AccY182 rho + 3997700547697378319545011890765266486027405910922669682977566226271873404539 + 606247468533221985235830670783090035505390707581836992507394196510416734232*rho 28317 := by
  simp only [Seg30.relationLc973, Seg30.relationLc973Part0, Seg30.relationLc973Part1, Seg30.relationLc973Part2, Seg30.relationLc973Part3, Seg30.relationLc973Part4, Seg30.relationLc973Part5, Seg30.relationLc973Part6, Seg30.relationLc973Part7, Seg30.relationLc973Part8, Seg30.relationLc973Part9, Seg30.relationLc973Part10, Seg30.relationLc973Part11]
  rw [seg30AccX182_sum, seg30AccY182_sum]
  ring

theorem seg30_lc974 (rho : Nat -> Seg30.F) :
    Seg30.relationLc974 rho = 3744238951500490286727160920744638637985361049519480076039155267625534712462*seg30AccX182 rho + 4446761201730992104703813048016280045348493424231394144957667229645535834502*seg30AccY182 rho + 4446761201730992104703813048016280045348493424231394144957667229645535834502 + 7838214280895148439012994267998456495870508627572226835427839259406992504809*rho 28317 := by
  simp only [Seg30.relationLc974, Seg30.relationLc974Part0, Seg30.relationLc974Part1, Seg30.relationLc974Part2, Seg30.relationLc974Part3, Seg30.relationLc974Part4, Seg30.relationLc974Part5, Seg30.relationLc974Part6, Seg30.relationLc974Part7, Seg30.relationLc974Part8, Seg30.relationLc974Part9, Seg30.relationLc974Part10, Seg30.relationLc974Part11]
  rw [seg30AccX182_sum, seg30AccY182_sum]
  ring

theorem seg30_lc975 (rho : Nat -> Seg30.F) :
    Seg30.relationLc975 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX182 rho + rho 29580 := by
  simp only [Seg30.relationLc975, Seg30.relationLc975Part0, Seg30.relationLc975Part1, Seg30.relationLc975Part2, Seg30.relationLc975Part3, Seg30.relationLc975Part4, Seg30.relationLc975Part5]
  rw [seg30AccX182_sum]
  ring

theorem seg30_lc976 (rho : Nat -> Seg30.F) :
    Seg30.relationLc976 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY182 rho + rho 29582 := by
  simp only [Seg30.relationLc976, Seg30.relationLc976Part0, Seg30.relationLc976Part1, Seg30.relationLc976Part2, Seg30.relationLc976Part3, Seg30.relationLc976Part4, Seg30.relationLc976Part5]
  rw [seg30AccY182_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
