import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc977 (rho : Nat -> Seg30.F) :
    Seg30.relationLc977 rho = seg30AccX183 rho + seg30AccY183 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc977, Seg30.relationLc977Part0, Seg30.relationLc977Part1, Seg30.relationLc977Part2, Seg30.relationLc977Part3, Seg30.relationLc977Part4, Seg30.relationLc977Part5, Seg30.relationLc977Part6, Seg30.relationLc977Part7, Seg30.relationLc977Part8, Seg30.relationLc977Part9, Seg30.relationLc977Part10, Seg30.relationLc977Part11]
  rw [seg30AccX183_sum, seg30AccY183_sum]
  ring

theorem seg30_lc978 (rho : Nat -> Seg30.F) :
    Seg30.relationLc978 rho = 5558663237932515679092437247609335659523465777026143470603988709834183187212*seg30AccX183 rho + 2341370113921811444658541306732284640097614745268182407182900276322865519012*rho 28317 := by
  simp only [Seg30.relationLc978, Seg30.relationLc978Part0, Seg30.relationLc978Part1, Seg30.relationLc978Part2, Seg30.relationLc978Part3, Seg30.relationLc978Part4, Seg30.relationLc978Part5]
  rw [seg30AccX183_sum]
  ring

theorem seg30_lc979 (rho : Nat -> Seg30.F) :
    Seg30.relationLc979 rho = 401307078671424362360248205069763579650906351959967677236019312795256990532*seg30AccY183 rho + 401307078671424362360248205069763579650906351959967677236019312795256990532 + 1645662026143048911676805444065887126400713304721187996347281522360788761077*rho 28317 := by
  simp only [Seg30.relationLc979, Seg30.relationLc979Part0, Seg30.relationLc979Part1, Seg30.relationLc979Part2, Seg30.relationLc979Part3, Seg30.relationLc979Part4, Seg30.relationLc979Part5]
  rw [seg30AccY183_sum]
  ring

theorem seg30_lc980 (rho : Nat -> Seg30.F) :
    Seg30.relationLc980 rho = 5843920463271508342389651294042052825632291650529301404784919533789215323662*seg30AccX183 rho + 401307078671424362360248205069763579650906351959967677236019312795256990532*seg30AccY183 rho + 401307078671424362360248205069763579650906351959967677236019312795256990532 + 5120937539103454819914457857244369292286294399835974332173391448207085533552*rho 28317 := by
  simp only [Seg30.relationLc980, Seg30.relationLc980Part0, Seg30.relationLc980Part1, Seg30.relationLc980Part2, Seg30.relationLc980Part3, Seg30.relationLc980Part4, Seg30.relationLc980Part5, Seg30.relationLc980Part6, Seg30.relationLc980Part7, Seg30.relationLc980Part8, Seg30.relationLc980Part9, Seg30.relationLc980Part10, Seg30.relationLc980Part11]
  rw [seg30AccX183_sum, seg30AccY183_sum]
  ring

theorem seg30_lc981 (rho : Nat -> Seg30.F) :
    Seg30.relationLc981 rho = 2600541286156862081859173644739493705743607684624762423150313922128193915379*seg30AccX183 rho + 8043154670756946061888576733711782951724992983194096150699214143122152248509*seg30AccY183 rho + 8043154670756946061888576733711782951724992983194096150699214143122152248509 + 3323524210324915604334367081537177239089604935318089495761842007710323705489*rho 28317 := by
  simp only [Seg30.relationLc981, Seg30.relationLc981Part0, Seg30.relationLc981Part1, Seg30.relationLc981Part2, Seg30.relationLc981Part3, Seg30.relationLc981Part4, Seg30.relationLc981Part5, Seg30.relationLc981Part6, Seg30.relationLc981Part7, Seg30.relationLc981Part8, Seg30.relationLc981Part9, Seg30.relationLc981Part10, Seg30.relationLc981Part11]
  rw [seg30AccX183_sum, seg30AccY183_sum]
  ring

theorem seg30_lc982 (rho : Nat -> Seg30.F) :
    Seg30.relationLc982 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX183 rho + rho 29588 := by
  simp only [Seg30.relationLc982, Seg30.relationLc982Part0, Seg30.relationLc982Part1, Seg30.relationLc982Part2, Seg30.relationLc982Part3, Seg30.relationLc982Part4, Seg30.relationLc982Part5]
  rw [seg30AccX183_sum]
  ring

theorem seg30_lc983 (rho : Nat -> Seg30.F) :
    Seg30.relationLc983 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY183 rho + rho 29590 := by
  simp only [Seg30.relationLc983, Seg30.relationLc983Part0, Seg30.relationLc983Part1, Seg30.relationLc983Part2, Seg30.relationLc983Part3, Seg30.relationLc983Part4, Seg30.relationLc983Part5]
  rw [seg30AccY183_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
