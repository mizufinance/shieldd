import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc900 (rho : Nat -> Seg30.F) :
    Seg30.relationLc900 rho = seg30AccX172 rho + seg30AccY172 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc900, Seg30.relationLc900Part0, Seg30.relationLc900Part1, Seg30.relationLc900Part2, Seg30.relationLc900Part3, Seg30.relationLc900Part4, Seg30.relationLc900Part5, Seg30.relationLc900Part6, Seg30.relationLc900Part7, Seg30.relationLc900Part8, Seg30.relationLc900Part9, Seg30.relationLc900Part10]
  rw [seg30AccX172_sum, seg30AccY172_sum]
  ring

theorem seg30_lc901 (rho : Nat -> Seg30.F) :
    Seg30.relationLc901 rho = 1939637175554028343952877222903386474419120937240795293453235189596207815568*seg30AccX172 rho + 3260487844049681244059064487609986020441575339499381944237059900510287835620*rho 28311 := by
  simp only [Seg30.relationLc901, Seg30.relationLc901Part0, Seg30.relationLc901Part1, Seg30.relationLc901Part2, Seg30.relationLc901Part3, Seg30.relationLc901Part4, Seg30.relationLc901Part5]
  rw [seg30AccX172_sum]
  ring

theorem seg30_lc902 (rho : Nat -> Seg30.F) :
    Seg30.relationLc902 rho = 3981554842788038437983906127460908899641731895452705244011833733867503855692*seg30AccY172 rho + 3981554842788038437983906127460908899641731895452705244011833733867503855692 + 4774531341859335617455251261646898000864070238664000687762939088765552617430*rho 28311 := by
  simp only [Seg30.relationLc902, Seg30.relationLc902Part0, Seg30.relationLc902Part1, Seg30.relationLc902Part2, Seg30.relationLc902Part3, Seg30.relationLc902Part4, Seg30.relationLc902Part5]
  rw [seg30AccY172_sum]
  ring

theorem seg30_lc903 (rho : Nat -> Seg30.F) :
    Seg30.relationLc903 rho = 7788219156267128113307242355732635558718197507009752605071504019654253011514*seg30AccX172 rho + 3981554842788038437983906127460908899641731895452705244011833733867503855692*seg30AccY172 rho + 3981554842788038437983906127460908899641731895452705244011833733867503855692 + 8426212087505645268336755543188212054487825984129312419384141324226872297676*rho 28311 := by
  simp only [Seg30.relationLc903, Seg30.relationLc903Part0, Seg30.relationLc903Part1, Seg30.relationLc903Part2, Seg30.relationLc903Part3, Seg30.relationLc903Part4, Seg30.relationLc903Part5, Seg30.relationLc903Part6, Seg30.relationLc903Part7, Seg30.relationLc903Part8, Seg30.relationLc903Part9, Seg30.relationLc903Part10]
  rw [seg30AccX172_sum, seg30AccY172_sum]
  ring

theorem seg30_lc904 (rho : Nat -> Seg30.F) :
    Seg30.relationLc904 rho = 656242593161242310941582583048910972657701828144311222863729436263156227527*seg30AccX172 rho + 4462906906640331986264918811320637631734167439701358583923399722049905383349*seg30AccY172 rho + 4462906906640331986264918811320637631734167439701358583923399722049905383349 + 18249661922725155912069395593334476888073351024751408551092131690536941365*rho 28311 := by
  simp only [Seg30.relationLc904, Seg30.relationLc904Part0, Seg30.relationLc904Part1, Seg30.relationLc904Part2, Seg30.relationLc904Part3, Seg30.relationLc904Part4, Seg30.relationLc904Part5, Seg30.relationLc904Part6, Seg30.relationLc904Part7, Seg30.relationLc904Part8, Seg30.relationLc904Part9, Seg30.relationLc904Part10]
  rw [seg30AccX172_sum, seg30AccY172_sum]
  ring

theorem seg30_lc905 (rho : Nat -> Seg30.F) :
    Seg30.relationLc905 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX172 rho + rho 29494 := by
  simp only [Seg30.relationLc905, Seg30.relationLc905Part0, Seg30.relationLc905Part1, Seg30.relationLc905Part2, Seg30.relationLc905Part3, Seg30.relationLc905Part4, Seg30.relationLc905Part5]
  rw [seg30AccX172_sum]
  ring

theorem seg30_lc906 (rho : Nat -> Seg30.F) :
    Seg30.relationLc906 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY172 rho + rho 29496 := by
  simp only [Seg30.relationLc906, Seg30.relationLc906Part0, Seg30.relationLc906Part1, Seg30.relationLc906Part2, Seg30.relationLc906Part3, Seg30.relationLc906Part4, Seg30.relationLc906Part5]
  rw [seg30AccY172_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
