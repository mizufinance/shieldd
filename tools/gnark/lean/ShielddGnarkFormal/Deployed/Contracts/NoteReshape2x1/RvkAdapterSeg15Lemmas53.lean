import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1110 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1110 rho = seg15AccX202 rho + seg15AccY202 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc1110, Seg15.relationLc1110Part0, Seg15.relationLc1110Part1, Seg15.relationLc1110Part2, Seg15.relationLc1110Part3, Seg15.relationLc1110Part4, Seg15.relationLc1110Part5, Seg15.relationLc1110Part6, Seg15.relationLc1110Part7, Seg15.relationLc1110Part8, Seg15.relationLc1110Part9, Seg15.relationLc1110Part10, Seg15.relationLc1110Part11, Seg15.relationLc1110Part12]
  rw [seg15AccX202_sum, seg15AccY202_sum]
  ring

theorem seg15_lc1111 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1111 rho = 6296888571737790473502119962646382761543789952931972953997351135752063125416*seg15AccX202 rho + 3360235993349921557478930211628176150415994224663314196343587614236684632347*rho 16130 := by
  simp only [Seg15.relationLc1111, Seg15.relationLc1111Part0, Seg15.relationLc1111Part1, Seg15.relationLc1111Part2, Seg15.relationLc1111Part3, Seg15.relationLc1111Part4, Seg15.relationLc1111Part5, Seg15.relationLc1111Part6]
  rw [seg15AccX202_sum]
  ring

theorem seg15_lc1112 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1112 rho = 3836254361821371855461032363456284343080856470191109187973679580433748081377*seg15AccY202 rho + 3836254361821371855461032363456284343080856470191109187973679580433748081377 + 4308558887452097310070062712423037990220006299339082313248399292937980109564*rho 16130 := by
  simp only [Seg15.relationLc1112, Seg15.relationLc1112Part0, Seg15.relationLc1112Part1, Seg15.relationLc1112Part2, Seg15.relationLc1112Part3, Seg15.relationLc1112Part4, Seg15.relationLc1112Part5, Seg15.relationLc1112Part6]
  rw [seg15AccY202_sum]
  ring

theorem seg15_lc1113 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1113 rho = 1676441402343373609598989823996290220144226246842176830813373780612472756475*seg15AccX202 rho + 3836254361821371855461032363456284343080856470191109187973679580433748081377*seg15AccY202 rho + 3836254361821371855461032363456284343080856470191109187973679580433748081377 + 4687030443945371036925762910022222683330288459044630784273755169853930765606*rho 16130 := by
  simp only [Seg15.relationLc1113, Seg15.relationLc1113Part0, Seg15.relationLc1113Part1, Seg15.relationLc1113Part2, Seg15.relationLc1113Part3, Seg15.relationLc1113Part4, Seg15.relationLc1113Part5, Seg15.relationLc1113Part6, Seg15.relationLc1113Part7, Seg15.relationLc1113Part8, Seg15.relationLc1113Part9, Seg15.relationLc1113Part10, Seg15.relationLc1113Part11, Seg15.relationLc1113Part12]
  rw [seg15AccX202_sum, seg15AccY202_sum]
  ring

theorem seg15_lc1114 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1114 rho = 6768020347084996814649835114785256311231673088311886997121859675304936482566*seg15AccX202 rho + 4608207387606998568787792575325262188295042864962954639961553875483661157664*seg15AccY202 rho + 4608207387606998568787792575325262188295042864962954639961553875483661157664 + 3757431305482999387323062028759323848045610876109433043661478286063478473435*rho 16130 := by
  simp only [Seg15.relationLc1114, Seg15.relationLc1114Part0, Seg15.relationLc1114Part1, Seg15.relationLc1114Part2, Seg15.relationLc1114Part3, Seg15.relationLc1114Part4, Seg15.relationLc1114Part5, Seg15.relationLc1114Part6, Seg15.relationLc1114Part7, Seg15.relationLc1114Part8, Seg15.relationLc1114Part9, Seg15.relationLc1114Part10, Seg15.relationLc1114Part11, Seg15.relationLc1114Part12]
  rw [seg15AccX202_sum, seg15AccY202_sum]
  ring

theorem seg15_lc1115 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1115 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX202 rho + rho 17553 := by
  simp only [Seg15.relationLc1115, Seg15.relationLc1115Part0, Seg15.relationLc1115Part1, Seg15.relationLc1115Part2, Seg15.relationLc1115Part3, Seg15.relationLc1115Part4, Seg15.relationLc1115Part5, Seg15.relationLc1115Part6]
  rw [seg15AccX202_sum]
  ring

theorem seg15_lc1116 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1116 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY202 rho + rho 17555 := by
  simp only [Seg15.relationLc1116, Seg15.relationLc1116Part0, Seg15.relationLc1116Part1, Seg15.relationLc1116Part2, Seg15.relationLc1116Part3, Seg15.relationLc1116Part4, Seg15.relationLc1116Part5, Seg15.relationLc1116Part6]
  rw [seg15AccY202_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
