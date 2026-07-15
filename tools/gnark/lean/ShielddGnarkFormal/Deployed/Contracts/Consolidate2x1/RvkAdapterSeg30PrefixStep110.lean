import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas10
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

theorem seg30_prefix_step110 (rho : Nat -> Seg30.F)
    (r110 : Seg30.relationRow110 rho)
    (r797 : Seg30.relationRow797 rho)
    (r798 : Seg30.relationRow798 rho)
    (r799 : Seg30.relationRow799 rho)
    (r800 : Seg30.relationRow800 rho)
    (r801 : Seg30.relationRow801 rho)
    (hacc : onCurve (seg30RvkAcc rho 110)) :
    RvkFixedBaseLadder.FixedStepRel 110 (rho 28427)
      (seg30RvkAcc rho 110) (seg30RvkAcc rho (110 + 1)) := by
  have hbrow110 : (1*(rho 28427))*(1 + (-1)*(rho 28427)) = 0 := by
    simpa [Seg30.relationRow110] using r110
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX109 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY109 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr110 : RvkFixedBaseLadder.FixedStepRel 110 (rho 28427)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX109 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY109 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX110 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY110 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc110, seg30AccX110, seg30AccY110, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung110_wide (rho 28317 : Seg30.F) (rho 28427 : Seg30.F) (seg30AccX109 rho : Seg30.F) (seg30AccY109 rho : Seg30.F) (rho 29113 : Seg30.F) (rho 29114 : Seg30.F) (rho 29115 : Seg30.F) (rho 29116 : Seg30.F) (rho 29117 : Seg30.F) hinput
        (by simpa using seg30_prefix_110_v2 rho r797)
        (by simpa using seg30_prefix_110_addX rho r798)
        (by simpa using seg30_prefix_110_addY rho r799)
        (by simpa using seg30_prefix_110_selX rho r800)
        (by simpa using seg30_prefix_110_selY rho r801)
        hbrow110
  exact hr110

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

