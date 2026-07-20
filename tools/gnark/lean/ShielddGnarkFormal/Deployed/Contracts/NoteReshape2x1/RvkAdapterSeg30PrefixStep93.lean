import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas9
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step93 (rho : Nat -> Seg30.F)
    (r93 : Seg30.relationRow93 rho)
    (r712 : Seg30.relationRow712 rho)
    (r713 : Seg30.relationRow713 rho)
    (r714 : Seg30.relationRow714 rho)
    (r715 : Seg30.relationRow715 rho)
    (r716 : Seg30.relationRow716 rho)
    (hacc : onCurve (seg30RvkAcc rho 93)) :
    RvkFixedBaseLadder.FixedStepRel 93 (rho 28404)
      (seg30RvkAcc rho 93) (seg30RvkAcc rho (93 + 1)) := by
  have hbrow93 : (1*(rho 28404))*(1 + (-1)*(rho 28404)) = 0 := by
    simpa [Seg30.relationRow93] using r93
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX92 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY92 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr93 : RvkFixedBaseLadder.FixedStepRel 93 (rho 28404)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX92 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY92 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX93 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY93 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc93, seg30AccX93, seg30AccY93, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung93_wide (rho 28311 : Seg30.F) (rho 28404 : Seg30.F) (seg30AccX92 rho : Seg30.F) (seg30AccY92 rho : Seg30.F) (rho 29022 : Seg30.F) (rho 29023 : Seg30.F) (rho 29024 : Seg30.F) (rho 29025 : Seg30.F) (rho 29026 : Seg30.F) hinput
        (by simpa using seg30_prefix_93_v2 rho r712)
        (by simpa using seg30_prefix_93_addX rho r713)
        (by simpa using seg30_prefix_93_addY rho r714)
        (by simpa using seg30_prefix_93_selX rho r715)
        (by simpa using seg30_prefix_93_selY rho r716)
        hbrow93
  exact hr93

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

