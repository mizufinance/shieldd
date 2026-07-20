import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc956 (rho : Nat -> Seg15.F) :
    Seg15.relationLc956 rho = seg15AccX180 rho + seg15AccY180 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc956, Seg15.relationLc956Part0, Seg15.relationLc956Part1, Seg15.relationLc956Part2, Seg15.relationLc956Part3, Seg15.relationLc956Part4, Seg15.relationLc956Part5, Seg15.relationLc956Part6, Seg15.relationLc956Part7, Seg15.relationLc956Part8, Seg15.relationLc956Part9, Seg15.relationLc956Part10, Seg15.relationLc956Part11]
  rw [seg15AccX180_sum, seg15AccY180_sum]
  ring

theorem seg15_lc957 (rho : Nat -> Seg15.F) :
    Seg15.relationLc957 rho = 3188036033033298877346478391701435462366254945646177246812371437562399669545*seg15AccX180 rho + 6428450126041257474157030038523500718991087062983819218404835930453042923738*rho 16130 := by
  simp only [Seg15.relationLc957, Seg15.relationLc957Part0, Seg15.relationLc957Part1, Seg15.relationLc957Part2, Seg15.relationLc957Part3, Seg15.relationLc957Part4, Seg15.relationLc957Part5]
  rw [seg15AccX180_sum]
  ring

theorem seg15_lc958 (rho : Nat -> Seg15.F) :
    Seg15.relationLc958 rho = 2601670001618979986581327060573004356823069937817005929232382071294362673458*seg15AccY180 rho + 2601670001618979986581327060573004356823069937817005929232382071294362673458 + 4751679099407146620309977891574056995749303970160864977880780610492133761897*rho 16130 := by
  simp only [Seg15.relationLc958, Seg15.relationLc958Part0, Seg15.relationLc958Part1, Seg15.relationLc958Part2, Seg15.relationLc958Part3, Seg15.relationLc958Part4, Seg15.relationLc958Part5]
  rw [seg15AccY180_sum]
  ring

theorem seg15_lc959 (rho : Nat -> Seg15.F) :
    Seg15.relationLc959 rho = 7858513741700159735663950142769489816338966993069751604625208082099106180276*seg15AccX180 rho + 2601670001618979986581327060573004356823069937817005929232382071294362673458*seg15AccY180 rho + 2601670001618979986581327060573004356823069937817005929232382071294362673458 + 3426061462580786244923008406012087084566066268361726778923206609952472608100*rho 16130 := by
  simp only [Seg15.relationLc959, Seg15.relationLc959Part0, Seg15.relationLc959Part1, Seg15.relationLc959Part2, Seg15.relationLc959Part3, Seg15.relationLc959Part4, Seg15.relationLc959Part5, Seg15.relationLc959Part6, Seg15.relationLc959Part7, Seg15.relationLc959Part8, Seg15.relationLc959Part9, Seg15.relationLc959Part10, Seg15.relationLc959Part11]
  rw [seg15AccX180_sum, seg15AccY180_sum]
  ring

theorem seg15_lc960 (rho : Nat -> Seg15.F) :
    Seg15.relationLc960 rho = 585948007728210688584874796012056715036932342084312223310025373818303058765*seg15AccX180 rho + 5842791747809390437667497878208542174552829397337057898702851384623046565583*seg15AccY180 rho + 5842791747809390437667497878208542174552829397337057898702851384623046565583 + 5018400286847584179325816532769459446809833066792337049012026845964936630941*rho 16130 := by
  simp only [Seg15.relationLc960, Seg15.relationLc960Part0, Seg15.relationLc960Part1, Seg15.relationLc960Part2, Seg15.relationLc960Part3, Seg15.relationLc960Part4, Seg15.relationLc960Part5, Seg15.relationLc960Part6, Seg15.relationLc960Part7, Seg15.relationLc960Part8, Seg15.relationLc960Part9, Seg15.relationLc960Part10, Seg15.relationLc960Part11]
  rw [seg15AccX180_sum, seg15AccY180_sum]
  ring

theorem seg15_lc961 (rho : Nat -> Seg15.F) :
    Seg15.relationLc961 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX180 rho + rho 17377 := by
  simp only [Seg15.relationLc961, Seg15.relationLc961Part0, Seg15.relationLc961Part1, Seg15.relationLc961Part2, Seg15.relationLc961Part3, Seg15.relationLc961Part4, Seg15.relationLc961Part5]
  rw [seg15AccX180_sum]
  ring

theorem seg15_lc962 (rho : Nat -> Seg15.F) :
    Seg15.relationLc962 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY180 rho + rho 17379 := by
  simp only [Seg15.relationLc962, Seg15.relationLc962Part0, Seg15.relationLc962Part1, Seg15.relationLc962Part2, Seg15.relationLc962Part3, Seg15.relationLc962Part4, Seg15.relationLc962Part5]
  rw [seg15AccY180_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
