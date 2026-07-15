import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas7
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

theorem seg15_prefix_step77 (rho : Nat -> Seg15.F)
    (r77 : Seg15.relationRow77 rho)
    (r632 : Seg15.relationRow632 rho)
    (r633 : Seg15.relationRow633 rho)
    (r634 : Seg15.relationRow634 rho)
    (r635 : Seg15.relationRow635 rho)
    (r636 : Seg15.relationRow636 rho)
    (hacc : onCurve (seg15RvkAcc rho 77)) :
    RvkFixedBaseLadder.FixedStepRel 77 (rho 16213)
      (seg15RvkAcc rho 77) (seg15RvkAcc rho (77 + 1)) := by
  have hbrow77 : (1*(rho 16213))*(1 + (-1)*(rho 16213)) = 0 := by
    simpa [Seg15.relationRow77] using r77
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX76 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY76 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr77 : RvkFixedBaseLadder.FixedStepRel 77 (rho 16213)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX76 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY76 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX77 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY77 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc77, seg15AccX77, seg15AccY77, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung77_wide (rho 16136 : Seg15.F) (rho 16213 : Seg15.F) (seg15AccX76 rho : Seg15.F) (seg15AccY76 rho : Seg15.F) (rho 16767 : Seg15.F) (rho 16768 : Seg15.F) (rho 16769 : Seg15.F) (rho 16770 : Seg15.F) (rho 16771 : Seg15.F) hinput
        (by simpa using seg15_prefix_77_v2 rho r632)
        (by simpa using seg15_prefix_77_addX rho r633)
        (by simpa using seg15_prefix_77_addY rho r634)
        (by simpa using seg15_prefix_77_selX rho r635)
        (by simpa using seg15_prefix_77_selY rho r636)
        hbrow77
  exact hr77

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

