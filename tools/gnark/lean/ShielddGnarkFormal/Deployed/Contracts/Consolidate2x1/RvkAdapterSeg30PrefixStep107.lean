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

theorem seg30_prefix_step107 (rho : Nat -> Seg30.F)
    (r107 : Seg30.relationRow107 rho)
    (r782 : Seg30.relationRow782 rho)
    (r783 : Seg30.relationRow783 rho)
    (r784 : Seg30.relationRow784 rho)
    (r785 : Seg30.relationRow785 rho)
    (r786 : Seg30.relationRow786 rho)
    (hacc : onCurve (seg30RvkAcc rho 107)) :
    RvkFixedBaseLadder.FixedStepRel 107 (rho 28424)
      (seg30RvkAcc rho 107) (seg30RvkAcc rho (107 + 1)) := by
  have hbrow107 : (1*(rho 28424))*(1 + (-1)*(rho 28424)) = 0 := by
    simpa [Seg30.relationRow107] using r107
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX106 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY106 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr107 : RvkFixedBaseLadder.FixedStepRel 107 (rho 28424)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX106 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY106 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX107 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY107 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc107, seg30AccX107, seg30AccY107, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung107_wide (rho 28317 : Seg30.F) (rho 28424 : Seg30.F) (seg30AccX106 rho : Seg30.F) (seg30AccY106 rho : Seg30.F) (rho 29098 : Seg30.F) (rho 29099 : Seg30.F) (rho 29100 : Seg30.F) (rho 29101 : Seg30.F) (rho 29102 : Seg30.F) hinput
        (by simpa using seg30_prefix_107_v2 rho r782)
        (by simpa using seg30_prefix_107_addX rho r783)
        (by simpa using seg30_prefix_107_addY rho r784)
        (by simpa using seg30_prefix_107_selX rho r785)
        (by simpa using seg30_prefix_107_selY rho r786)
        hbrow107
  exact hr107

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

