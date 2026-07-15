import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas4
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

theorem seg30_prefix_step48 (rho : Nat -> Seg30.F)
    (r48 : Seg30.relationRow48 rho)
    (r487 : Seg30.relationRow487 rho)
    (r488 : Seg30.relationRow488 rho)
    (r489 : Seg30.relationRow489 rho)
    (r490 : Seg30.relationRow490 rho)
    (r491 : Seg30.relationRow491 rho)
    (hacc : onCurve (seg30RvkAcc rho 48)) :
    RvkFixedBaseLadder.FixedStepRel 48 (rho 28365)
      (seg30RvkAcc rho 48) (seg30RvkAcc rho (48 + 1)) := by
  have hbrow48 : (1*(rho 28365))*(1 + (-1)*(rho 28365)) = 0 := by
    simpa [Seg30.relationRow48] using r48
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX47 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY47 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr48 : RvkFixedBaseLadder.FixedStepRel 48 (rho 28365)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX47 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY47 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX48 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY48 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc48, seg30AccX48, seg30AccY48, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung48_wide (rho 28317 : Seg30.F) (rho 28365 : Seg30.F) (seg30AccX47 rho : Seg30.F) (seg30AccY47 rho : Seg30.F) (rho 28803 : Seg30.F) (rho 28804 : Seg30.F) (rho 28805 : Seg30.F) (rho 28806 : Seg30.F) (rho 28807 : Seg30.F) hinput
        (by simpa using seg30_prefix_48_v2 rho r487)
        (by simpa using seg30_prefix_48_addX rho r488)
        (by simpa using seg30_prefix_48_addY rho r489)
        (by simpa using seg30_prefix_48_selX rho r490)
        (by simpa using seg30_prefix_48_selY rho r491)
        hbrow48
  exact hr48

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

