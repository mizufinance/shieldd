import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc739 (rho : Nat -> Seg15.F) :
    Seg15.relationLc739 rho = seg15AccX149 rho + seg15AccY149 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc739, Seg15.relationLc739Part0, Seg15.relationLc739Part1, Seg15.relationLc739Part2, Seg15.relationLc739Part3, Seg15.relationLc739Part4, Seg15.relationLc739Part5, Seg15.relationLc739Part6, Seg15.relationLc739Part7, Seg15.relationLc739Part8, Seg15.relationLc739Part9]
  rw [seg15AccX149_sum, seg15AccY149_sum]
  ring

theorem seg15_lc740 (rho : Nat -> Seg15.F) :
    Seg15.relationLc740 rho = 3144982910228748581975719192741403467556637701274845694014003990746557421882*seg15AccX149 rho + 5769188875529050372644141506610052770738299431780184070866704372825525935919*rho 16136 := by
  simp only [Seg15.relationLc740, Seg15.relationLc740Part0, Seg15.relationLc740Part1, Seg15.relationLc740Part2, Seg15.relationLc740Part3, Seg15.relationLc740Part4]
  rw [seg15AccX149_sum]
  ring

theorem seg15_lc741 (rho : Nat -> Seg15.F) :
    Seg15.relationLc741 rho = 7995175084980332794894335504846425685460706685990983680008492838779928162389*seg15AccY149 rho + 7995175084980332794894335504846425685460706685990983680008492838779928162389 + 1981879756459152890585408800338738007832827297438533450175392580190602675804*rho 16136 := by
  simp only [Seg15.relationLc741, Seg15.relationLc741Part0, Seg15.relationLc741Part1, Seg15.relationLc741Part2, Seg15.relationLc741Part3, Seg15.relationLc741Part4]
  rw [seg15AccY149_sum]
  ring

theorem seg15_lc742 (rho : Nat -> Seg15.F) :
    Seg15.relationLc742 rho = 6203709236971791698109936530403506506650340040519080595790234042592346130041*seg15AccX149 rho + 7995175084980332794894335504846425685460706685990983680008492838779928162389*seg15AccY149 rho + 7995175084980332794894335504846425685460706685990983680008492838779928162389 + 2282881608847224617088973318695651457560718567975860498722210416720224759390*rho 16136 := by
  simp only [Seg15.relationLc742, Seg15.relationLc742Part0, Seg15.relationLc742Part1, Seg15.relationLc742Part2, Seg15.relationLc742Part3, Seg15.relationLc742Part4, Seg15.relationLc742Part5, Seg15.relationLc742Part6, Seg15.relationLc742Part7, Seg15.relationLc742Part8, Seg15.relationLc742Part9]
  rw [seg15AccX149_sum, seg15AccY149_sum]
  ring

theorem seg15_lc743 (rho : Nat -> Seg15.F) :
    Seg15.relationLc743 rho = 2240752512456578726138888408378040024725559294634983232144999413325063109000*seg15AccX149 rho + 449286664448037629354489433935120845915192649163080147926740617137481076652*seg15AccY149 rho + 449286664448037629354489433935120845915192649163080147926740617137481076652 + 6161580140581145807159851620085895073815180767178203329213023039197184479651*rho 16136 := by
  simp only [Seg15.relationLc743, Seg15.relationLc743Part0, Seg15.relationLc743Part1, Seg15.relationLc743Part2, Seg15.relationLc743Part3, Seg15.relationLc743Part4, Seg15.relationLc743Part5, Seg15.relationLc743Part6, Seg15.relationLc743Part7, Seg15.relationLc743Part8, Seg15.relationLc743Part9]
  rw [seg15AccX149_sum, seg15AccY149_sum]
  ring

theorem seg15_lc744 (rho : Nat -> Seg15.F) :
    Seg15.relationLc744 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX149 rho + rho 17135 := by
  simp only [Seg15.relationLc744, Seg15.relationLc744Part0, Seg15.relationLc744Part1, Seg15.relationLc744Part2, Seg15.relationLc744Part3, Seg15.relationLc744Part4]
  rw [seg15AccX149_sum]
  ring

theorem seg15_lc745 (rho : Nat -> Seg15.F) :
    Seg15.relationLc745 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY149 rho + rho 17137 := by
  simp only [Seg15.relationLc745, Seg15.relationLc745Part0, Seg15.relationLc745Part1, Seg15.relationLc745Part2, Seg15.relationLc745Part3, Seg15.relationLc745Part4]
  rw [seg15AccY149_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
