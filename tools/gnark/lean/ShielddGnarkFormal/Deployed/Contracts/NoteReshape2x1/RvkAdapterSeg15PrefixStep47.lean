import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas4
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

theorem seg15_prefix_step47 (rho : Nat -> Seg15.F)
    (r47 : Seg15.relationRow47 rho)
    (r482 : Seg15.relationRow482 rho)
    (r483 : Seg15.relationRow483 rho)
    (r484 : Seg15.relationRow484 rho)
    (r485 : Seg15.relationRow485 rho)
    (r486 : Seg15.relationRow486 rho)
    (hacc : onCurve (seg15RvkAcc rho 47)) :
    RvkFixedBaseLadder.FixedStepRel 47 (rho 16177)
      (seg15RvkAcc rho 47) (seg15RvkAcc rho (47 + 1)) := by
  have hbrow47 : (1*(rho 16177))*(1 + (-1)*(rho 16177)) = 0 := by
    simpa [Seg15.relationRow47] using r47
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX46 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY46 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr47 : RvkFixedBaseLadder.FixedStepRel 47 (rho 16177)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX46 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY46 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX47 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY47 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc47, seg15AccX47, seg15AccY47, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung47_wide (rho 16130 : Seg15.F) (rho 16177 : Seg15.F) (seg15AccX46 rho : Seg15.F) (seg15AccY46 rho : Seg15.F) (rho 16611 : Seg15.F) (rho 16612 : Seg15.F) (rho 16613 : Seg15.F) (rho 16614 : Seg15.F) (rho 16615 : Seg15.F) hinput
        (by simpa using seg15_prefix_47_v2 rho r482)
        (by simpa using seg15_prefix_47_addX rho r483)
        (by simpa using seg15_prefix_47_addY rho r484)
        (by simpa using seg15_prefix_47_selX rho r485)
        (by simpa using seg15_prefix_47_selY rho r486)
        hbrow47
  exact hr47

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

