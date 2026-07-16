import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas13
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step131 (rho : Nat -> Seg30.F)
    (r131 : Seg30.relationRow131 rho)
    (r902 : Seg30.relationRow902 rho)
    (r903 : Seg30.relationRow903 rho)
    (r904 : Seg30.relationRow904 rho)
    (r905 : Seg30.relationRow905 rho)
    (r906 : Seg30.relationRow906 rho)
    (hacc : onCurve (seg30RvkAcc rho 131)) :
    RvkFixedBaseLadder.FixedStepRel 131 (rho 28448)
      (seg30RvkAcc rho 131) (seg30RvkAcc rho (131 + 1)) := by
  have hbrow131 : (1*(rho 28448))*(1 + (-1)*(rho 28448)) = 0 := by
    simpa [Seg30.relationRow131] using r131
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX130 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY130 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr131 : RvkFixedBaseLadder.FixedStepRel 131 (rho 28448)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX130 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY130 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX131 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY131 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc131, seg30AccX131, seg30AccY131, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung131_wide (rho 28317 : Seg30.F) (rho 28448 : Seg30.F) (seg30AccX130 rho : Seg30.F) (seg30AccY130 rho : Seg30.F) (rho 29218 : Seg30.F) (rho 29219 : Seg30.F) (rho 29220 : Seg30.F) (rho 29221 : Seg30.F) (rho 29222 : Seg30.F) hinput
        (by simpa using seg30_prefix_131_v2 rho r902)
        (by simpa using seg30_prefix_131_addX rho r903)
        (by simpa using seg30_prefix_131_addY rho r904)
        (by simpa using seg30_prefix_131_selX rho r905)
        (by simpa using seg30_prefix_131_selY rho r906)
        hbrow131
  exact hr131

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

