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

theorem seg30_prefix_step76 (rho : Nat -> Seg30.F)
    (r76 : Seg30.relationRow76 rho)
    (r627 : Seg30.relationRow627 rho)
    (r628 : Seg30.relationRow628 rho)
    (r629 : Seg30.relationRow629 rho)
    (r630 : Seg30.relationRow630 rho)
    (r631 : Seg30.relationRow631 rho)
    (hacc : onCurve (seg30RvkAcc rho 76)) :
    RvkFixedBaseLadder.FixedStepRel 76 (rho 28393)
      (seg30RvkAcc rho 76) (seg30RvkAcc rho (76 + 1)) := by
  have hbrow76 : (1*(rho 28393))*(1 + (-1)*(rho 28393)) = 0 := by
    simpa [Seg30.relationRow76] using r76
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX75 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY75 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr76 : RvkFixedBaseLadder.FixedStepRel 76 (rho 28393)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX75 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY75 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX76 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY76 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc76, seg30AccX76, seg30AccY76, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung76_wide (rho 28317 : Seg30.F) (rho 28393 : Seg30.F) (seg30AccX75 rho : Seg30.F) (seg30AccY75 rho : Seg30.F) (rho 28943 : Seg30.F) (rho 28944 : Seg30.F) (rho 28945 : Seg30.F) (rho 28946 : Seg30.F) (rho 28947 : Seg30.F) hinput
        (by simpa using seg30_prefix_76_v2 rho r627)
        (by simpa using seg30_prefix_76_addX rho r628)
        (by simpa using seg30_prefix_76_addY rho r629)
        (by simpa using seg30_prefix_76_selX rho r630)
        (by simpa using seg30_prefix_76_selY rho r631)
        hbrow76
  exact hr76

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

