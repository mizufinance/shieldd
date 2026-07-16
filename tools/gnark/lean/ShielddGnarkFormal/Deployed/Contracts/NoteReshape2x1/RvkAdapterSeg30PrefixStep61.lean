import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas6
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

theorem seg30_prefix_step61 (rho : Nat -> Seg30.F)
    (r61 : Seg30.relationRow61 rho)
    (r552 : Seg30.relationRow552 rho)
    (r553 : Seg30.relationRow553 rho)
    (r554 : Seg30.relationRow554 rho)
    (r555 : Seg30.relationRow555 rho)
    (r556 : Seg30.relationRow556 rho)
    (hacc : onCurve (seg30RvkAcc rho 61)) :
    RvkFixedBaseLadder.FixedStepRel 61 (rho 28378)
      (seg30RvkAcc rho 61) (seg30RvkAcc rho (61 + 1)) := by
  have hbrow61 : (1*(rho 28378))*(1 + (-1)*(rho 28378)) = 0 := by
    simpa [Seg30.relationRow61] using r61
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX60 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY60 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr61 : RvkFixedBaseLadder.FixedStepRel 61 (rho 28378)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX60 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY60 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX61 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY61 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc61, seg30AccX61, seg30AccY61, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung61_wide (rho 28317 : Seg30.F) (rho 28378 : Seg30.F) (seg30AccX60 rho : Seg30.F) (seg30AccY60 rho : Seg30.F) (rho 28868 : Seg30.F) (rho 28869 : Seg30.F) (rho 28870 : Seg30.F) (rho 28871 : Seg30.F) (rho 28872 : Seg30.F) hinput
        (by simpa using seg30_prefix_61_v2 rho r552)
        (by simpa using seg30_prefix_61_addX rho r553)
        (by simpa using seg30_prefix_61_addY rho r554)
        (by simpa using seg30_prefix_61_selX rho r555)
        (by simpa using seg30_prefix_61_selY rho r556)
        hbrow61
  exact hr61

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

