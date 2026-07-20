import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas2
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

theorem seg30_prefix_step21 (rho : Nat -> Seg30.F)
    (r21 : Seg30.relationRow21 rho)
    (r352 : Seg30.relationRow352 rho)
    (r353 : Seg30.relationRow353 rho)
    (r354 : Seg30.relationRow354 rho)
    (r355 : Seg30.relationRow355 rho)
    (r356 : Seg30.relationRow356 rho)
    (hacc : onCurve (seg30RvkAcc rho 21)) :
    RvkFixedBaseLadder.FixedStepRel 21 (rho 28332)
      (seg30RvkAcc rho 21) (seg30RvkAcc rho (21 + 1)) := by
  have hbrow21 : (1*(rho 28332))*(1 + (-1)*(rho 28332)) = 0 := by
    simpa [Seg30.relationRow21] using r21
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX20 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY20 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr21 : RvkFixedBaseLadder.FixedStepRel 21 (rho 28332)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX20 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY20 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX21 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY21 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc21, seg30AccX21, seg30AccY21, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung21_wide (rho 28311 : Seg30.F) (rho 28332 : Seg30.F) (seg30AccX20 rho : Seg30.F) (seg30AccY20 rho : Seg30.F) (rho 28662 : Seg30.F) (rho 28663 : Seg30.F) (rho 28664 : Seg30.F) (rho 28665 : Seg30.F) (rho 28666 : Seg30.F) hinput
        (by simpa using seg30_prefix_21_v2 rho r352)
        (by simpa using seg30_prefix_21_addX rho r353)
        (by simpa using seg30_prefix_21_addY rho r354)
        (by simpa using seg30_prefix_21_selX rho r355)
        (by simpa using seg30_prefix_21_selY rho r356)
        hbrow21
  exact hr21

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

