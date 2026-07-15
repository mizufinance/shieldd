import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas14
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

theorem seg30_prefix_step146 (rho : Nat -> Seg30.F)
    (r146 : Seg30.relationRow146 rho)
    (r977 : Seg30.relationRow977 rho)
    (r978 : Seg30.relationRow978 rho)
    (r979 : Seg30.relationRow979 rho)
    (r980 : Seg30.relationRow980 rho)
    (r981 : Seg30.relationRow981 rho)
    (hacc : onCurve (seg30RvkAcc rho 146)) :
    RvkFixedBaseLadder.FixedStepRel 146 (rho 28463)
      (seg30RvkAcc rho 146) (seg30RvkAcc rho (146 + 1)) := by
  have hbrow146 : (1*(rho 28463))*(1 + (-1)*(rho 28463)) = 0 := by
    simpa [Seg30.relationRow146] using r146
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX145 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY145 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr146 : RvkFixedBaseLadder.FixedStepRel 146 (rho 28463)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX145 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY145 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX146 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY146 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc146, seg30AccX146, seg30AccY146, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung146_wide (rho 28317 : Seg30.F) (rho 28463 : Seg30.F) (seg30AccX145 rho : Seg30.F) (seg30AccY145 rho : Seg30.F) (rho 29293 : Seg30.F) (rho 29294 : Seg30.F) (rho 29295 : Seg30.F) (rho 29296 : Seg30.F) (rho 29297 : Seg30.F) hinput
        (by simpa using seg30_prefix_146_v2 rho r977)
        (by simpa using seg30_prefix_146_addX rho r978)
        (by simpa using seg30_prefix_146_addY rho r979)
        (by simpa using seg30_prefix_146_selX rho r980)
        (by simpa using seg30_prefix_146_selY rho r981)
        hbrow146
  exact hr146

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

