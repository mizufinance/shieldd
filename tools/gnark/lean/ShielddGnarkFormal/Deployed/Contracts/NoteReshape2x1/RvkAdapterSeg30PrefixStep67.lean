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

theorem seg30_prefix_step67 (rho : Nat -> Seg30.F)
    (r67 : Seg30.relationRow67 rho)
    (r582 : Seg30.relationRow582 rho)
    (r583 : Seg30.relationRow583 rho)
    (r584 : Seg30.relationRow584 rho)
    (r585 : Seg30.relationRow585 rho)
    (r586 : Seg30.relationRow586 rho)
    (hacc : onCurve (seg30RvkAcc rho 67)) :
    RvkFixedBaseLadder.FixedStepRel 67 (rho 28378)
      (seg30RvkAcc rho 67) (seg30RvkAcc rho (67 + 1)) := by
  have hbrow67 : (1*(rho 28378))*(1 + (-1)*(rho 28378)) = 0 := by
    simpa [Seg30.relationRow67] using r67
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX66 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY66 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr67 : RvkFixedBaseLadder.FixedStepRel 67 (rho 28378)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX66 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY66 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX67 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY67 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc67, seg30AccX67, seg30AccY67, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung67_wide (rho 28311 : Seg30.F) (rho 28378 : Seg30.F) (seg30AccX66 rho : Seg30.F) (seg30AccY66 rho : Seg30.F) (rho 28892 : Seg30.F) (rho 28893 : Seg30.F) (rho 28894 : Seg30.F) (rho 28895 : Seg30.F) (rho 28896 : Seg30.F) hinput
        (by simpa using seg30_prefix_67_v2 rho r582)
        (by simpa using seg30_prefix_67_addX rho r583)
        (by simpa using seg30_prefix_67_addY rho r584)
        (by simpa using seg30_prefix_67_selX rho r585)
        (by simpa using seg30_prefix_67_selY rho r586)
        hbrow67
  exact hr67

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

