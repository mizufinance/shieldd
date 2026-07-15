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

theorem seg30_prefix_step15 (rho : Nat -> Seg30.F)
    (r15 : Seg30.relationRow15 rho)
    (r322 : Seg30.relationRow322 rho)
    (r323 : Seg30.relationRow323 rho)
    (r324 : Seg30.relationRow324 rho)
    (r325 : Seg30.relationRow325 rho)
    (r326 : Seg30.relationRow326 rho)
    (hacc : onCurve (seg30RvkAcc rho 15)) :
    RvkFixedBaseLadder.FixedStepRel 15 (rho 28332)
      (seg30RvkAcc rho 15) (seg30RvkAcc rho (15 + 1)) := by
  have hbrow15 : (1*(rho 28332))*(1 + (-1)*(rho 28332)) = 0 := by
    simpa [Seg30.relationRow15] using r15
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX14 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY14 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr15 : RvkFixedBaseLadder.FixedStepRel 15 (rho 28332)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX14 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY14 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX15 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY15 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc15, seg30AccX15, seg30AccY15, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung15_wide (rho 28317 : Seg30.F) (rho 28332 : Seg30.F) (seg30AccX14 rho : Seg30.F) (seg30AccY14 rho : Seg30.F) (rho 28638 : Seg30.F) (rho 28639 : Seg30.F) (rho 28640 : Seg30.F) (rho 28641 : Seg30.F) (rho 28642 : Seg30.F) hinput
        (by simpa using seg30_prefix_15_v2 rho r322)
        (by simpa using seg30_prefix_15_addX rho r323)
        (by simpa using seg30_prefix_15_addY rho r324)
        (by simpa using seg30_prefix_15_selX rho r325)
        (by simpa using seg30_prefix_15_selY rho r326)
        hbrow15
  exact hr15

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

