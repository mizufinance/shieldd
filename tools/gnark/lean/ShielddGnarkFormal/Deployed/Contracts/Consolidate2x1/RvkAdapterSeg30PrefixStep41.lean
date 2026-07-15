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

theorem seg30_prefix_step41 (rho : Nat -> Seg30.F)
    (r41 : Seg30.relationRow41 rho)
    (r452 : Seg30.relationRow452 rho)
    (r453 : Seg30.relationRow453 rho)
    (r454 : Seg30.relationRow454 rho)
    (r455 : Seg30.relationRow455 rho)
    (r456 : Seg30.relationRow456 rho)
    (hacc : onCurve (seg30RvkAcc rho 41)) :
    RvkFixedBaseLadder.FixedStepRel 41 (rho 28358)
      (seg30RvkAcc rho 41) (seg30RvkAcc rho (41 + 1)) := by
  have hbrow41 : (1*(rho 28358))*(1 + (-1)*(rho 28358)) = 0 := by
    simpa [Seg30.relationRow41] using r41
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX40 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY40 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr41 : RvkFixedBaseLadder.FixedStepRel 41 (rho 28358)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX40 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY40 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX41 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY41 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc41, seg30AccX41, seg30AccY41, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung41_wide (rho 28317 : Seg30.F) (rho 28358 : Seg30.F) (seg30AccX40 rho : Seg30.F) (seg30AccY40 rho : Seg30.F) (rho 28768 : Seg30.F) (rho 28769 : Seg30.F) (rho 28770 : Seg30.F) (rho 28771 : Seg30.F) (rho 28772 : Seg30.F) hinput
        (by simpa using seg30_prefix_41_v2 rho r452)
        (by simpa using seg30_prefix_41_addX rho r453)
        (by simpa using seg30_prefix_41_addY rho r454)
        (by simpa using seg30_prefix_41_selX rho r455)
        (by simpa using seg30_prefix_41_selY rho r456)
        hbrow41
  exact hr41

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

