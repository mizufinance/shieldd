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

theorem seg15_prefix_step107 (rho : Nat -> Seg15.F)
    (r107 : Seg15.relationRow107 rho)
    (r782 : Seg15.relationRow782 rho)
    (r783 : Seg15.relationRow783 rho)
    (r784 : Seg15.relationRow784 rho)
    (r785 : Seg15.relationRow785 rho)
    (r786 : Seg15.relationRow786 rho)
    (hacc : onCurve (seg15RvkAcc rho 107)) :
    RvkFixedBaseLadder.FixedStepRel 107 (rho 16237)
      (seg15RvkAcc rho 107) (seg15RvkAcc rho (107 + 1)) := by
  have hbrow107 : (1*(rho 16237))*(1 + (-1)*(rho 16237)) = 0 := by
    simpa [Seg15.relationRow107] using r107
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX106 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY106 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr107 : RvkFixedBaseLadder.FixedStepRel 107 (rho 16237)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX106 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY106 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX107 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY107 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc107, seg15AccX107, seg15AccY107, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung107_wide (rho 16130 : Seg15.F) (rho 16237 : Seg15.F) (seg15AccX106 rho : Seg15.F) (seg15AccY106 rho : Seg15.F) (rho 16911 : Seg15.F) (rho 16912 : Seg15.F) (rho 16913 : Seg15.F) (rho 16914 : Seg15.F) (rho 16915 : Seg15.F) hinput
        (by simpa using seg15_prefix_107_v2 rho r782)
        (by simpa using seg15_prefix_107_addX rho r783)
        (by simpa using seg15_prefix_107_addY rho r784)
        (by simpa using seg15_prefix_107_selX rho r785)
        (by simpa using seg15_prefix_107_selY rho r786)
        hbrow107
  exact hr107

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

