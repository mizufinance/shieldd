import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas1
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

theorem seg30_prefix_step20 (rho : Nat -> Seg30.F)
    (r20 : Seg30.relationRow20 rho)
    (r347 : Seg30.relationRow347 rho)
    (r348 : Seg30.relationRow348 rho)
    (r349 : Seg30.relationRow349 rho)
    (r350 : Seg30.relationRow350 rho)
    (r351 : Seg30.relationRow351 rho)
    (hacc : onCurve (seg30RvkAcc rho 20)) :
    RvkFixedBaseLadder.FixedStepRel 20 (rho 28337)
      (seg30RvkAcc rho 20) (seg30RvkAcc rho (20 + 1)) := by
  have hbrow20 : (1*(rho 28337))*(1 + (-1)*(rho 28337)) = 0 := by
    simpa [Seg30.relationRow20] using r20
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX19 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY19 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr20 : RvkFixedBaseLadder.FixedStepRel 20 (rho 28337)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX19 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY19 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX20 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY20 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc20, seg30AccX20, seg30AccY20, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung20_wide (rho 28317 : Seg30.F) (rho 28337 : Seg30.F) (seg30AccX19 rho : Seg30.F) (seg30AccY19 rho : Seg30.F) (rho 28663 : Seg30.F) (rho 28664 : Seg30.F) (rho 28665 : Seg30.F) (rho 28666 : Seg30.F) (rho 28667 : Seg30.F) hinput
        (by simpa using seg30_prefix_20_v2 rho r347)
        (by simpa using seg30_prefix_20_addX rho r348)
        (by simpa using seg30_prefix_20_addY rho r349)
        (by simpa using seg30_prefix_20_selX rho r350)
        (by simpa using seg30_prefix_20_selY rho r351)
        hbrow20
  exact hr20

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

