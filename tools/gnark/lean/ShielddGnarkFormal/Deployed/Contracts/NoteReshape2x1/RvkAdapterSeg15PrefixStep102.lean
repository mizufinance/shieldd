import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas10
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_step102 (rho : Nat -> Seg15.F)
    (r102 : Seg15.relationRow102 rho)
    (r757 : Seg15.relationRow757 rho)
    (r758 : Seg15.relationRow758 rho)
    (r759 : Seg15.relationRow759 rho)
    (r760 : Seg15.relationRow760 rho)
    (r761 : Seg15.relationRow761 rho)
    (hacc : onCurve (seg15RvkAcc rho 102)) :
    RvkFixedBaseLadder.FixedStepRel 102 (rho 16232)
      (seg15RvkAcc rho 102) (seg15RvkAcc rho (102 + 1)) := by
  have hbrow102 : (1*(rho 16232))*(1 + (-1)*(rho 16232)) = 0 := by
    simpa [Seg15.relationRow102] using r102
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX101 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY101 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr102 : RvkFixedBaseLadder.FixedStepRel 102 (rho 16232)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX101 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY101 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX102 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY102 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc102, seg15AccX102, seg15AccY102, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung102_wide (rho 16130 : Seg15.F) (rho 16232 : Seg15.F) (seg15AccX101 rho : Seg15.F) (seg15AccY101 rho : Seg15.F) (rho 16886 : Seg15.F) (rho 16887 : Seg15.F) (rho 16888 : Seg15.F) (rho 16889 : Seg15.F) (rho 16890 : Seg15.F) hinput
        (by simpa using seg15_prefix_102_v2 rho r757)
        (by simpa using seg15_prefix_102_addX rho r758)
        (by simpa using seg15_prefix_102_addY rho r759)
        (by simpa using seg15_prefix_102_selX rho r760)
        (by simpa using seg15_prefix_102_selY rho r761)
        hbrow102
  exact hr102

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

