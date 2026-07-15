import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas8
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

theorem seg30_prefix_step87 (rho : Nat -> Seg30.F)
    (r87 : Seg30.relationRow87 rho)
    (r682 : Seg30.relationRow682 rho)
    (r683 : Seg30.relationRow683 rho)
    (r684 : Seg30.relationRow684 rho)
    (r685 : Seg30.relationRow685 rho)
    (r686 : Seg30.relationRow686 rho)
    (hacc : onCurve (seg30RvkAcc rho 87)) :
    RvkFixedBaseLadder.FixedStepRel 87 (rho 28404)
      (seg30RvkAcc rho 87) (seg30RvkAcc rho (87 + 1)) := by
  have hbrow87 : (1*(rho 28404))*(1 + (-1)*(rho 28404)) = 0 := by
    simpa [Seg30.relationRow87] using r87
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX86 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY86 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr87 : RvkFixedBaseLadder.FixedStepRel 87 (rho 28404)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX86 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY86 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX87 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY87 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc87, seg30AccX87, seg30AccY87, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung87_wide (rho 28317 : Seg30.F) (rho 28404 : Seg30.F) (seg30AccX86 rho : Seg30.F) (seg30AccY86 rho : Seg30.F) (rho 28998 : Seg30.F) (rho 28999 : Seg30.F) (rho 29000 : Seg30.F) (rho 29001 : Seg30.F) (rho 29002 : Seg30.F) hinput
        (by simpa using seg30_prefix_87_v2 rho r682)
        (by simpa using seg30_prefix_87_addX rho r683)
        (by simpa using seg30_prefix_87_addY rho r684)
        (by simpa using seg30_prefix_87_selX rho r685)
        (by simpa using seg30_prefix_87_selY rho r686)
        hbrow87
  exact hr87

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

