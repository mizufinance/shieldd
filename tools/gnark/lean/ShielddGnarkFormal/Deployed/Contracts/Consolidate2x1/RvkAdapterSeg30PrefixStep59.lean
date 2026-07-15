import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas5
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

theorem seg30_prefix_step59 (rho : Nat -> Seg30.F)
    (r59 : Seg30.relationRow59 rho)
    (r542 : Seg30.relationRow542 rho)
    (r543 : Seg30.relationRow543 rho)
    (r544 : Seg30.relationRow544 rho)
    (r545 : Seg30.relationRow545 rho)
    (r546 : Seg30.relationRow546 rho)
    (hacc : onCurve (seg30RvkAcc rho 59)) :
    RvkFixedBaseLadder.FixedStepRel 59 (rho 28376)
      (seg30RvkAcc rho 59) (seg30RvkAcc rho (59 + 1)) := by
  have hbrow59 : (1*(rho 28376))*(1 + (-1)*(rho 28376)) = 0 := by
    simpa [Seg30.relationRow59] using r59
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX58 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY58 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr59 : RvkFixedBaseLadder.FixedStepRel 59 (rho 28376)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX58 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY58 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX59 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY59 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc59, seg30AccX59, seg30AccY59, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung59_wide (rho 28317 : Seg30.F) (rho 28376 : Seg30.F) (seg30AccX58 rho : Seg30.F) (seg30AccY58 rho : Seg30.F) (rho 28858 : Seg30.F) (rho 28859 : Seg30.F) (rho 28860 : Seg30.F) (rho 28861 : Seg30.F) (rho 28862 : Seg30.F) hinput
        (by simpa using seg30_prefix_59_v2 rho r542)
        (by simpa using seg30_prefix_59_addX rho r543)
        (by simpa using seg30_prefix_59_addY rho r544)
        (by simpa using seg30_prefix_59_selX rho r545)
        (by simpa using seg30_prefix_59_selY rho r546)
        hbrow59
  exact hr59

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

