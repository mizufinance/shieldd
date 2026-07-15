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

theorem seg30_prefix_step75 (rho : Nat -> Seg30.F)
    (r75 : Seg30.relationRow75 rho)
    (r622 : Seg30.relationRow622 rho)
    (r623 : Seg30.relationRow623 rho)
    (r624 : Seg30.relationRow624 rho)
    (r625 : Seg30.relationRow625 rho)
    (r626 : Seg30.relationRow626 rho)
    (hacc : onCurve (seg30RvkAcc rho 75)) :
    RvkFixedBaseLadder.FixedStepRel 75 (rho 28392)
      (seg30RvkAcc rho 75) (seg30RvkAcc rho (75 + 1)) := by
  have hbrow75 : (1*(rho 28392))*(1 + (-1)*(rho 28392)) = 0 := by
    simpa [Seg30.relationRow75] using r75
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX74 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY74 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr75 : RvkFixedBaseLadder.FixedStepRel 75 (rho 28392)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX74 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY74 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX75 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY75 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc75, seg30AccX75, seg30AccY75, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung75_wide (rho 28317 : Seg30.F) (rho 28392 : Seg30.F) (seg30AccX74 rho : Seg30.F) (seg30AccY74 rho : Seg30.F) (rho 28938 : Seg30.F) (rho 28939 : Seg30.F) (rho 28940 : Seg30.F) (rho 28941 : Seg30.F) (rho 28942 : Seg30.F) hinput
        (by simpa using seg30_prefix_75_v2 rho r622)
        (by simpa using seg30_prefix_75_addX rho r623)
        (by simpa using seg30_prefix_75_addY rho r624)
        (by simpa using seg30_prefix_75_selX rho r625)
        (by simpa using seg30_prefix_75_selY rho r626)
        hbrow75
  exact hr75

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

