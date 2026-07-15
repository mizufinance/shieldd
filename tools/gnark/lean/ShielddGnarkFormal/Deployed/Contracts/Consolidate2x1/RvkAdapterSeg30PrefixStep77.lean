import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas7
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step77 (rho : Nat -> Seg30.F)
    (r77 : Seg30.relationRow77 rho)
    (r632 : Seg30.relationRow632 rho)
    (r633 : Seg30.relationRow633 rho)
    (r634 : Seg30.relationRow634 rho)
    (r635 : Seg30.relationRow635 rho)
    (r636 : Seg30.relationRow636 rho)
    (hacc : onCurve (seg30RvkAcc rho 77)) :
    RvkFixedBaseLadder.FixedStepRel 77 (rho 28394)
      (seg30RvkAcc rho 77) (seg30RvkAcc rho (77 + 1)) := by
  have hbrow77 : (1*(rho 28394))*(1 + (-1)*(rho 28394)) = 0 := by
    simpa [Seg30.relationRow77] using r77
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX76 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY76 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr77 : RvkFixedBaseLadder.FixedStepRel 77 (rho 28394)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX76 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY76 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX77 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY77 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc77, seg30AccX77, seg30AccY77, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung77_wide (rho 28317 : Seg30.F) (rho 28394 : Seg30.F) (seg30AccX76 rho : Seg30.F) (seg30AccY76 rho : Seg30.F) (rho 28948 : Seg30.F) (rho 28949 : Seg30.F) (rho 28950 : Seg30.F) (rho 28951 : Seg30.F) (rho 28952 : Seg30.F) hinput
        (by simpa using seg30_prefix_77_v2 rho r632)
        (by simpa using seg30_prefix_77_addX rho r633)
        (by simpa using seg30_prefix_77_addY rho r634)
        (by simpa using seg30_prefix_77_selX rho r635)
        (by simpa using seg30_prefix_77_selY rho r636)
        hbrow77
  exact hr77

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

