import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas6
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_step66 (rho : Nat -> Seg15.F)
    (r66 : Seg15.relationRow66 rho)
    (r577 : Seg15.relationRow577 rho)
    (r578 : Seg15.relationRow578 rho)
    (r579 : Seg15.relationRow579 rho)
    (r580 : Seg15.relationRow580 rho)
    (r581 : Seg15.relationRow581 rho)
    (hacc : onCurve (seg15RvkAcc rho 66)) :
    RvkFixedBaseLadder.FixedStepRel 66 (rho 16202)
      (seg15RvkAcc rho 66) (seg15RvkAcc rho (66 + 1)) := by
  have hbrow66 : (1*(rho 16202))*(1 + (-1)*(rho 16202)) = 0 := by
    simpa [Seg15.relationRow66] using r66
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX65 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY65 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr66 : RvkFixedBaseLadder.FixedStepRel 66 (rho 16202)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX65 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY65 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX66 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY66 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc66, seg15AccX66, seg15AccY66, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung66_wide (rho 16136 : Seg15.F) (rho 16202 : Seg15.F) (seg15AccX65 rho : Seg15.F) (seg15AccY65 rho : Seg15.F) (rho 16712 : Seg15.F) (rho 16713 : Seg15.F) (rho 16714 : Seg15.F) (rho 16715 : Seg15.F) (rho 16716 : Seg15.F) hinput
        (by simpa using seg15_prefix_66_v2 rho r577)
        (by simpa using seg15_prefix_66_addX rho r578)
        (by simpa using seg15_prefix_66_addY rho r579)
        (by simpa using seg15_prefix_66_selX rho r580)
        (by simpa using seg15_prefix_66_selY rho r581)
        hbrow66
  exact hr66

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

